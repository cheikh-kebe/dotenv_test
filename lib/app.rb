require 'twitter'
require 'dotenv'
require 'pry'
Dotenv.load
# n'oublie pas les lignes pour Dotenv ici…

# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
return client
end

def twitt(client)
# ligne qui permet de tweeter sur ton compte
client.update('coucou my love @BochetMargaux!!!!')
end


twitt(login_twitter)
