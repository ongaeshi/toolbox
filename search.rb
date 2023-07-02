require "cgi"
require "launchy"

query = CGI.escape(ARGV.join(" "))

# Default Browser
# Launchy.open("https://www.google.co.jp/search?q=#{query}")

# Edge
system("start msedge https://www.bing.com/search?q=#{query}")
