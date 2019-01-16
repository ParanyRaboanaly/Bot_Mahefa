# ligne très importante qui appelle la gem.
require 'dotenv'
require 'twitter'

# n'oublie pas les lignes pour Dotenv ici…
Dotenv.load
# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
 config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
 config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

#puts "#{ENV["TWITTER_API_KEY"]}"
# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet en Ruby !!!!')
