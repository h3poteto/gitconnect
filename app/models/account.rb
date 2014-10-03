# -*- coding: utf-8 -*-
class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :repositories

  def self.create_unique_string
    SecureRandom.uuid
  end

  def self.create_unique_email
    Account.create_unique_string + "@gitconnect.io"
  end

  def self.find_for_github_oauth(auth, signed_in_resource=nil)
    account = Account.where(:provider => auth.provider, :uid => auth.uid).first

    unless account
      account = Account.new(
        name: auth.info.nickname,
        provider: auth.provider,
        uid: auth.uid,
        access_token: auth.credentials.token,
        email: Account.create_unique_email,
        password: Devise.friendly_token[0,20]
      )

      ## TODO: signed_in_resourceがcurrent_clientに一致していたらclient側の処理を通す
      if signed_in_resource.present?
        if signed_in_resource.class == Client
          client = signed_in_resource
          client.account = account

          application = Octokit::Client.new(:access_token => account.access_token)
          self.update_repositories(application, account)

          client.save!
          account.save!
        end
      else
        # 初回ログイン時にUser作成

        application = Octokit::Client.new(:access_token => account.access_token)

        user = User.new(
          email: application.user.email)
        user.account = account

        self.update_repositories(application, account)

        account.save!
        user.save!
      end
    end
    account
  end

  def self.update_repositories(application, account)
    application.repos.each do |repo|
      language = Language.where(name: repo.language).first
      unless language
        language = Language.create(
          name: repo.language
          ) if repo.language.present?
      end

      repository = Repository.new(
        name: repo.name,
        full_name: repo.full_name,
        owner_name: repo.owner.login,
        owner_id: repo.owner.id,
        owner_url: repo.owner.html_url,
        private: repo.private,
        html_url: repo.html_url,
        fork: repo.fork,
        first_created: repo.created_at,
        last_updated: repo.updated_at,
        pushed_at: repo.pushed_at,
        forks_count: repo.forks_count
        )
      repository.account = account
      repository.language = language
      repository.save
    end
  end
end
