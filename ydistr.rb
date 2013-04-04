# Download historical distributions from Yahoo Finance

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'sqlite3'
require 'csv'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS MLPDistr(
  ticker    VARCHAR(16) NOT NULL,
  exdate    DATE NOT NULL,
  dividend  FLOAT
  )"
$db.execute "DELETE FROM MLPDistr"

$baseurl = "http://ichart.finance.yahoo.com/table.csv?g=v&s="

# fetch the mlp tickers from the db...
res = $db.execute "SELECT ticker FROM MLPMaster"
res.each do |rec|
  puts rec
  # fetch the distributions history from yahoo finance...
  begin
    CSV.new(open("#{$baseurl}#{rec[0]}"), :headers => :first_row, encoding: "UTF-8").each do |line|
      puts line
      $db.execute "INSERT INTO MLPDistr 
        VALUES 
        (?,?,?)", 
        [
          rec[0],
          Date.parse(line[0]).to_s,
          line[1].to_f,
        ]
    end
  rescue OpenURI::HTTPError => e
    puts e.message
  end
end
