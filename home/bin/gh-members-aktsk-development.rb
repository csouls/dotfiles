#!/usr/bin/env ruby
require 'octokit'
require 'terminal-table'
require 'memoist'
require 'pry'

ORGANIZATION = 'aktsk'.freeze
TEAM_NAME = 'development'.freeze

extend Memoist

def members_2fa_disabled(client)
  members_2fa_disabled = []
  1.upto(1000).each do |num|
    members = client.organization_members(ORGANIZATION, filter: '2fa_disabled', page: num)
    break if members.count == 0
    members_2fa_disabled += members
  end
  members_2fa_disabled
end
memoize :members_2fa_disabled

def team_members(client)
  team_members = []
  dev_team_id = client.org_teams(ORGANIZATION).find { |t| t[:name] == TEAM_NAME }[:id]
  1.upto(1000).each do |num|
    members = client.team_members(dev_team_id, page: num)
    break if members.count == 0
    team_members += members
  end
  team_members
end
memoize :team_members

def two_factor_enabled?(client, user_id)
  !members_2fa_disabled(client).any? { |m| m[:id] == user_id }
end

client = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])

rows = team_members(client).map do |member|
  [TEAM_NAME, member[:login], two_factor_enabled?(client, member[:id])]
end

puts Terminal::Table.new headings: ['Team', 'Github ID', '2FA Enabled?'], rows: rows
