# Scrape EPD news

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'sqlite3'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS MLPNews(
  id        INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  ticker    VARCHAR(16) NOT NULL,
  headline  VARCHAR,
  body      TEXT,
  date      DATE NOT NULL DEFAULT (date('now')))"

$baseurl = "http://phx.corporate-ir.net/"
$ticker = "EPD"

# function to process headlines, news story and update db...
def process(rows)
  puts "Number of rows: #{rows.length}"
  rows.each do |row|
    date = row.css('td')[0].text.strip
    headline = row.css('td a')[0].text.strip

    # fetch the story page...
    link = row.css('td a')[0]['href']
    page = Nokogiri::HTML(open($baseurl+link))
    body = page.css('div.contentbox table tr.ccbnBgTxt')[0].text.strip

    # insert into db...
    puts "#{$ticker},#{date},#{headline}"
    $db.execute "INSERT INTO MLPNews (ticker, headline, body, date) VALUES (?,?,?,?)", [$ticker, headline, body, date]
  end
end

# fetch the headlines page...
page = Nokogiri::HTML(open("#{$baseurl}phoenix.zhtml?c=80547&p=irol-news&nyo=0"))
rows = page.css('div.contentbox table tr tr.ccbnBgTblOdd')[0..-1]
process(rows)
rows = page.css('div.contentbox table tr tr.ccbnBgTblEven')[0..-1]
process(rows)

