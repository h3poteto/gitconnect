class Repository < ActiveRecord::Base
  belongs_to :language
  belongs_to :account
end
