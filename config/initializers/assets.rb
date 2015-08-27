# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# This must be updated for each new controller (TODO: create custom generator that gets run after generate scaffold)
%w(
  users
  games
  zones
  decks
  user_games
).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.css"]
end