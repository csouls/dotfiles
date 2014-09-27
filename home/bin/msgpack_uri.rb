#!/Users/yusuke/.rbenv/shims/ruby
require 'net/http'
require 'uri'
require 'msgpack'
require 'pry'
require 'json'

url = URI.parse(ARGV[0])
res = Net::HTTP.start(url.host, url.port){|http|
    http.get(url)
}

body = MessagePack.unpack res.body
puts JSON.pretty_generate(body)
