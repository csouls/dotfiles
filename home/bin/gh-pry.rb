#!/usr/bin/env ruby
require 'octokit'
require 'pry'

gc = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])
binding.pry
