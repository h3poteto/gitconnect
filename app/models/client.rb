class Client < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :account

  validates_uniqueness_of :email
end
