class AccountLanguage < ActiveRecord::Base
  belongs_to :account
  belongs_to :language
end
