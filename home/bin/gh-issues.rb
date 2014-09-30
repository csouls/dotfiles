#!/usr/bin/env ruby
require 'octokit'
require 'csv'
require 'pry'

repo = ARGV[0]
gc = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])

page_num = 0
CSV.open(ARGV[1], "wb") do |csv|
  csv << [:number, :title, :label, :state, :closed_at, :milestone, :assignee, :body, :link, :created_at]
  while !(issues = gc.issues(repo, state: :all, direction: :asc, page: page_num)).empty? do
    issues.each do |i|
      next if i[:pull_request]
      milestone = i[:milestone] ? i[:milestone][:title] : ""
      assignee = i[:assignee] ? i[:assignee][:login] : ""
      label = i[:labels].empty? ? "" : i[:labels].first.name.encode("Shift_JIS")
      csv << [i[:number], i[:title].to_s.encode("Shift_JIS"), label, i[:state], i[:closed_at], milestone, assignee, i[:body].to_s.encode("Shift_JIS"), i[:html_url], i[:created_at].getlocal]
    end
    page_num = page_num + 1
  end
end
