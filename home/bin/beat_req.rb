#!/usr/bin/env ruby

require 'rubygems'
require 'msgpack'
require 'securerandom'
require 'pry'
require 'pry-nav'
require 'pry-doc'
require 'openssl'
require 'Base64'

@host = "rudolf-beat.dev-aktsk.net"
@port = 80

def signature(uri, method: 'GET')
  timestamp = Time.now.to_i
  nonce = SecureRandom.uuid.gsub('-', '')

  data = <<-EOF
  #{timestamp}
  #{nonce}
  #{method}
  #{uri}
  #{@host}
  #{@port}

  EOF

  Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest::Digest.new('sha256'), @secret, data)).strip()
end

  case args[:method]
  when "POST"
    system(%Q!curl -v --request POST -H 'Content-Type: application/x-msgpack' -H 'Authorization: MAC id="#{@access_token}", nonce="#{nonce}", ts="#{timestamp}", mac="#{signature}"' --data-binary '@#{args[:in_file]}' 'http://#{@host}:#{@port}#{args[:uri]}' > #{args[:out_file]}!)
  when "GET"
    system(%Q!curl -v --request GET -H 'Content-Type: application/x-msgpack' -H 'Authorization: MAC id="#{@access_token}", nonce="#{nonce}", ts="#{timestamp}", mac="#{signature}"' 'http://#{@host}:#{@port}#{args[:uri]}' > #{args[:out_file]}!)
  when "PATCH"
    system(%Q!curl -v --request PATCH -H 'Content-Type: application/x-msgpack' -H 'Authorization: MAC id="#{@access_token}", nonce="#{nonce}", ts="#{timestamp}", mac="#{signature}"' --data-binary '@#{args[:in_file]}' 'http://#{@host}:#{@port}#{args[:uri]}' > #{args[:out_file]}!)
  end

def api_get(location, limit = 10)
  raise ArgumentError, 'too many HTTP redirects' if limit == 0
  uri = URI.parse(URI.join("http://#{@host}:#{@port}/api", location))
  begin
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
      http.open_timeout = 5
      http.read_timeout = 10
      http.get(uri.request_uri)
    end
    case response
    when Net::HTTPSuccess
      MessagePack.unpack(response.body)
    when Net::HTTPRedirection
      location = response['location']
      warn "redirected to #{location}"
      api_get(location, limit - 1)
    else
      puts [uri.to_s, response.value].join(" : ")
    end
  rescue => e
    puts [uri.to_s, e.class, e].join(" : ")
  end
end

puts api_get('versions/data')

request_data = {
  user: {name: 'AuthTest'},
  user_account: {
    udid: SecureRandom.uuid,
    device_model: "Nexus 7",
    os_version: "4.2.2",
  }
}.to_msgpack
File.open(sign_up_request, 'wb') { |f| f.write(request_data) }
system("curl -v -H 'Content-Type: application/x-msgpack' --data-binary '@#{sign_up_request}' 'http://#{@host}:#{@port}/api/sign_up' > #{sign_up_out}")




out_data = MessagePack.unpack(File.open(sign_up_out).read)
basic_auth_header = out_data["identifier"]
system("curl -v -H 'Content-Type: application/x-www-form-urlencoded' -H 'Authorization: Basic #{basic_auth_header}' --data-binary '@/dev/null' 'http://#{@host}:#{@port}/api/login' > #{login_out}")



out_data = MessagePack.unpack(File.open(login_out).read)
@access_token = out_data["access_token"]
@secret = out_data["secret"]




request_data = {"team_set" => 2}.to_msgpack
File.open(user_team_create_request, 'wb') { |f| f.write(request_data) }
access(method: "POST", uri: "/api/user_teams", in_file: user_team_create_request, out_file: user_team_create_output)



access(method: "POST", uri: "/api/helpers", in_file: "/dev/null", out_file: helper_out)




out_data = MessagePack.unpack(File.open(helper_out).read)
helper_pid = out_data["helpers"].first["pid"]
request_data = {"helper_pid" => helper_pid, "team_number" => 1}.to_msgpack
File.open(dungeon_prepare_request, 'wb') { |f| f.write(request_data) }
access(method: "POST", uri: "/api/dungeons/10001/prepare", in_file: dungeon_prepare_request, out_file: dungeon_prepare_output)




out_data = MessagePack.unpack(File.open(dungeon_prepare_output).read)
request_data = {"pid" => out_data["pid"]}.to_msgpack
File.open(dungeon_start_request, "wb") { |f| f.write(request_data) }
access(method: "POST", uri: "/api/dungeons/start", in_file: dungeon_start_request, out_file: dungeon_start_output)


defeated_enemy_ids = out_data['stages'].map { |stage| stage['enemies'].map { |enemy| enemy['enemy_id'] } }.flatten
request_data = {
  "pid" => out_data["pid"],
  "result" => "win",
  "completed_at" => Time.now.to_i,
  'defeated_enemy_ids' => defeated_enemy_ids,
}.to_msgpack
File.open(dungeon_finish_request, "wb") { |f| f.write(request_data) }
access(method: "POST", uri: "/api/dungeons/finish", in_file: dungeon_finish_request, out_file: dungeon_finish_output)



request_data = {user: {name: "たかきんぐ"}}.to_msgpack
File.open(user_update_request, "wb") { |f| f.write(request_data) }
access(method: "PATCH", uri: "/api/users", in_file: user_update_request, out_file: user_update_output)




request_data = {}.to_msgpack
File.open(conversation_group_show_request, "wb") { |f| f.write(request_data) }
access(method: "GET", uri: "/api/conversation_groups/stage01_1/show", in_file: conversation_group_show_request, out_file: conversation_group_show_output)




request_data = {}.to_msgpack
File.open(user_status_request, "wb") { |f| f.write(request_data) }
access(method: "GET", uri: "/api/user_statuses", in_file: user_status_request, out_file: user_status_output)
out_data = MessagePack.unpack(File.open(user_status_output).read)
uc_ids = out_data['user_characters'].map do |uc|
  uc['id']
end



request_data = {}.to_msgpack
File.open(login_bonus_receive_request, "wb") { |f| f.write(request_data) }
access(method: "POST", uri: "/api/login_bonuses/receive",
       in_file: login_bonus_receive_request, out_file: login_bonus_receive_output)




request_data = {times: 'full'}.to_msgpack
File.open(gacha_roll_request, "wb") { |f| f.write(request_data) }
access(method: "POST", uri: "/api/gachas/2", in_file: gacha_roll_request, out_file: gacha_roll_output)
