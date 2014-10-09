# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")
require 'json'

namespace :update_repos do
  desc "update"
  task :update => :environment do
    accounts = Account.all
    accounts.each do |a|
      application = Octokit::Client.new(:access_token => a.access_token)
      if application.blank?
        next
      end
      Account.update_repositories(application, a)
    end
  end

end
