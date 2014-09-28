# coding: utf-8
ActiveRecord::Base.connection.execute("TRUNCATE admins")
Admin.create({
  email: ENV["ADMIN_EMAIL"],
  password: ENV["ADMIN_PASSWORD"],
  password_confirmation: ENV["ADMIN_PASSWORD"]
})
