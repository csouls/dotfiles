#!/usr/bin/env ruby
require 'octokit'
require 'csv'
require 'pry'

repo = ARGV[0]
arr_of_arrs = CSV.read(ARGV[1])
gc = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])

arr_of_arrs.each do |arr|
  labels, title, body = arr
  gc.create_issue(repo, title, body, labels: labels)
end
