# Scrape Alerian web site for MLP listings

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'sqlite3'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS MLPMaster(
  id            INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  ticker        VARCHAR(16) NOT NULL UNIQUE,
  name          VARCHAR(64) NOT NULL,
  sector        VARCHAR(64),
  yield         FLOAT,
  distr         FLOAT,
  distrincr     INTEGER,
  distrsince    VARCHAR(16),
  sharesout     INTEGER,
  ipo           DATE,
  date          DATE NOT NULL DEFAULT (date('now')))"

$baseurl = "http://www.alerian.com/mlp-screener/"

# fetch the listings page...
page = Nokogiri::HTML(open($baseurl))
rows = page.css('div.entry-content table tr')[1..-1]
puts "Number of rows: #{rows.length}"
rows.each do |row|
  puts row.text.strip
  $db.execute "INSERT OR REPLACE INTO MLPMaster 
    (ticker, name, sector, yield, distr, sharesout, distrincr, ipo, distrsince) 
    VALUES 
    (?,?,?,?,?,?,?,?,?)", 
    [
      row.css('td')[0].text.strip,
      row.css('td')[1].text.strip,
      row.css('td')[2].text.strip,
      row.css('td')[4].text.strip.chop.to_f,
      row.css('td')[5].text.strip.slice(1..-1).to_f,
      row.css('td')[6].text.strip.to_f*1000000,
      row.css('td')[8].text.strip.to_i,
      row.css('td')[9].text.strip,
      row.css('td')[10].text.strip,
    ]
end
