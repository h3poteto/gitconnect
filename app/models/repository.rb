class Repository < ActiveRecord::Base
  belongs_to :language
  has_many :account_repositories
  has_many :accounts, through: :account_repositories

  validates :github_repository_id, presence: true
end
