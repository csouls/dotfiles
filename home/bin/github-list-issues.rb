#!/usr/bin/env ruby
require 'octokit'
require 'active_support/core_ext'
require 'csv'
require 'pry'

repo = ARGV[0]
gc = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])

page_num = 1
CSV.open(ARGV[1], "w") do |csv|
  csv << [:number, :label, :title, :state, :milestone, :assignee, :link, :body, :created_at, :closed_at]
  while !(issues = gc.issues(repo, state: :all, direction: :asc, page: page_num)).empty? do
    issues.each do |i|
      next if i[:pull_request]
      milestone = i[:milestone] ? i[:milestone][:title] : ""
      assignee = i[:assignee] ? i[:assignee][:login] : ""
      label = i[:labels].empty? ? "" : i[:labels].first.name.encode("Shift_JIS")
      body = i[:body].to_s.truncate(100).gsub(/(\r\n|\r|\n)/, ' ').encode("Shift_JIS")
      closed_at = i[:closed_at] ? i[:closed_at].getlocal : nil
      csv << [i[:number], label, i[:title].to_s.encode("Shift_JIS"), i[:state], milestone, assignee, i[:html_url], body, i[:created_at].getlocal, closed_at]
    end
    page_num = page_num + 1
  end
end
