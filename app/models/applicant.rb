class Applicant < ActiveRecord::Base
  belongs_to :user
  has_many :repositories
end
