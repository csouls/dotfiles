#!/usr/bin/env ruby
require 'octokit'
require 'hipchat'

gc = Octokit::Client.new(ENV['GITHUB_ACCESS_TOKEN'])
hc = HipChat::Client.new(ENV['HIPCHAT_NOTIFICATION_TOKEN'])

File.open('tmp/github-aktsk-members') do |f|
  gc.organization_members('aktsk', per_page: 1000).map(&:login)
end
