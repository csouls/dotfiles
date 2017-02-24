#!/usr/bin/env ruby
require 'octokit'
require 'terminal-table'
require 'memoist'
require 'pry'

ORGANIZATION = 'aktsk'.freeze
TEAM_NAME = 'development'.freeze

extend Memoist

Octokit.auto_paginate = true

def members_outside_collaborators(client)
  client.outside_collaborators(ORGANIZATION, headers: {Accept: 'application/vnd.github.korra-preview'})
end
memoize :members_outside_collaborators

def members_2fa_disabled(client)
  client.organization_members(ORGANIZATION, filter: '2fa_disabled')
end
memoize :members_2fa_disabled

def team_members(client)
  dev_team_id = client.org_teams(ORGANIZATION).find { |t| t[:name] == TEAM_NAME }[:id]
  client.team_members(dev_team_id)
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
