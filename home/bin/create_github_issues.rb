#!/usr/bin/env ruby
require 'octokit'
require 'csv'
require 'pry'

repo = ARGV[0]
arr_of_arrs = CSV.read(ARGV[1])
gc = Octokit::Client.new(access_token: '1e2aba7b39d4865f34c9024d8f8df0ac2a7da5b3')

arr_of_arrs.each do |arr|
  labels, title, body = arr
  gc.create_issue(repo, title, body, labels: labels)
end
