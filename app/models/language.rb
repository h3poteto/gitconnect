class Language < ActiveRecord::Base
  has_many :repositories
  has_many :account_languages
  has_many :accounts, through: :account_languages

  validates :name, uniqueness: true
end
