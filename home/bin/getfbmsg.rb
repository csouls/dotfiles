#!/Users/yusuke/.rbenv/shims/ruby
require 'koala'
require 'time'
require 'pry'

#@graph = Koala::Facebook::API.new('CAACEdEose0cBAEZCdFrjs2Cvtrq3jNX5vcQ4ZB9hFNAdsi4GvgvzObU2ZAs0f4UJh58ZCADqk3KweW5inNvBDRS2ZAIJuZB2wZCBdN52LaBNCPiCDRga9ZBobECoZAotitK2QAnJUj6d57ybZC7zyiA6NxR8IGrJSOoLMvcgZBzlpnd7wZDZD')
#@graph = Koala::Facebook::API.new('CAACBUHmCtAMBAMy9R6UMgcVzhsAreLIUY9luDLLmZAnvqERz0WeiWZBdYwCj7kFpVWj1B5VMig7mjFdZBEmUVUKcFZAVO0WgZC6ZByHgKijTgvve1ZBVHz1Rv0N72pd3MxXvLmzw7uwZBrUftiTWjlJ0Xw9AWiaO8FMDF9pA74rYZCwZDZD')

@graph = Koala::Facebook::OAuth.new('142182635975683', '5f74d1a794a7c37b14363592e3d99402')
info = @graph.exchange_access_token_info('CAACBUHmCtAMBAMy9R6UMgcVzhsAreLIUY9luDLLmZAnvqERz0WeiWZBdYwCj7kFpVWj1B5VMig7mjFdZBEmUVUKcFZAVO0WgZC6ZByHgKijTgvve1ZBVHz1Rv0N72pd3MxXvLmzw7uwZBrUftiTWjlJ0Xw9AWiaO8FMDF9pA74rYZCwZDZD')
puts info
#comments = @graph.get_connections("me", "inbox").find { |m| m['id'] == "480803438678974" }['comments']['data']
#comments.each do |comment|
#  #if Time.parse(comment['created_time']) >= Date.today.to_time
#    puts "#{comment['created_time']} #{comment['from']['name']} : #{comment['message']}"
#  #end
#end
