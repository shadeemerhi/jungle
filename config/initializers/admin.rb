Rails.configuration.admin = {
  :name     => ENV['HTTP_AUTH_NAME'],
  :password => ENV["HTTP_AUTH_PASSWORD"]
}