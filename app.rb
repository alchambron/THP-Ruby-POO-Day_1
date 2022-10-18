# Calling differents gems
require 'bundler'
Bundler.require

# Calling diffents ruby files
require_relative 'lib/user'
require_relative 'lib/event'

alexis = User.new("alchambron@gmail.com", 24)

jour1 = Event.new("2022-10-17 15:10", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
jour2 = Event.new("2023-03-12", 30, "Rencontre", "alexis@gmail.com")

puts alexis.email


# puts jour1.to_s

# puts alexis.find_by_email("alchambron@gmail.com")

