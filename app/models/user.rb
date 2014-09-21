# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_one :applicant

  def self.create_unique_string
    SecureRandom.uuid
  end

  def self.create_unique_email
    User.create_unique_string + "@gitconnect.io"
  end

  def self.find_for_github_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.new(
        name: auth.info.nickname,
        provider: auth.provider,
        uid: auth.uid,
        access_token: auth.credentials.token,
        email: User.create_unique_email,
        password: Devise.friendly_token[0,20]
      )

      # 初回ログイン時にapplicant作成

      client = Octokit::Client.new(:access_token => user.access_token)

      applicant = Applicant.new(
        email: client.user.email)
      applicant.user = user

      client.repos.each do |repo|
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
        repository.applicant = applicant
        repository.language = language
        repository.save
        user.save
        applicant.save
      end

    end
    user
  end
end
