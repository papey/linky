require "option_parser"
require "../lib/urls.cr"

VERSION = "0.1.0"

# default variables
endpoint = "https://example.com"
max = 20

# options parsing
OptionParser.parse do |p|
  p.banner = "Usage: linky [options]"

  p.on "-v", "--version", "Print version" do
    puts "#{VERSION}"
    exit
  end

  p.on "-h", "--help", "Show help" do
    puts p
    exit
  end

  p.on "-u ENDPOINT", "--url=endpoint", "Specify the URL endpoint" { |u| endpoint = u }

  p.on "-m VALUE", "--max=value", "Specify maximum follow redirects" do |v|
    begin
      max = v.to_i
    rescue exception
      STDERR.puts "Error: max value #{v} is not an integer"
      exit 1
    end
  end
end

# get all
begin
  paths = Urls.get_urls(endpoint, max)
rescue exception
  puts "Error: #{exception}"
  exit 2
end

# prepare output
output = paths.map { |elem| "#{elem[0]} - #{elem[1]}" }.join "\n\t➜ "

# print final result
puts "🔍 #{output}"
