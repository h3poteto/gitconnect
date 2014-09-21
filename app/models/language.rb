class Language < ActiveRecord::Base
  has_many :repositories

  validates :name, uniqueness: true
end
