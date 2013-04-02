# Download historical prices from Yahoo Finance

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'sqlite3'
require 'csv'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS MLPHist(
  ticker    VARCHAR(16) NOT NULL,
  date      DATE NOT NULL,
  open      FLOAT,
  high      FLOAT,
  low       FLOAT,
  close     FLOAT,
  volume    INTEGER,
  adjclose  FLOAT
  )"
$db.execute "DELETE FROM MLPHist"

$baseurl = "http://ichart.finance.yahoo.com/table.csv?s="

# fetch the mlp tickers from the db...
res = $db.execute "SELECT ticker FROM MLPMaster"
res.each do |rec|
  puts rec
  # fetch the price history from yahoo finance...
  begin
    CSV.new(open("#{$baseurl}#{rec[0]}"), :headers => :first_row, encoding: "UTF-8").each do |line|
      puts line
      $db.execute "INSERT INTO MLPHist 
        VALUES 
        (?,?,?,?,?,?,?,?)", 
        [
          rec[0],
          Date.parse(line[0]).to_s,
          line[1].to_f,
          line[2].to_f,
          line[3].to_f,
          line[4].to_f,
          line[5].to_i,
          line[6].to_f
        ]
    end
  rescue OpenURI::HTTPError => e
    puts e.message
  end
end
