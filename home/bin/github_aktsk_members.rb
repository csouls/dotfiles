#!/usr/bin/env ruby
require 'octokit'
require 'hipchat'

#client = Octokit::Client.new(access_token: 'your access_token from https://github.com/settings/applications')
hc = HipChat::Client.new('88b876385a8c212c50a01327dbcb50')
gc = Octokit::Client.new(access_token: '72aa75f3f670687cb65d3f2ed699a76c070c8d4e')

File.open('tmp/github-aktsk-members') do |f|
gc.organization_members('aktsk', per_page: 1000).map(&:login)

