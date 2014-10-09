class AccountRepository < ActiveRecord::Base
  belongs_to :account
  belongs_to :repository
end
