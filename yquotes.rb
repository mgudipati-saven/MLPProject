# Download current quotes from Yahoo Finance

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'sqlite3'
require 'csv'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS MLPQuotes(
  ticker  VARCHAR(16) PRIMARY KEY NOT NULL,
  date    DATE,
  last    FLOAT,
  open    FLOAT,
  high    FLOAT,
  low     FLOAT,
  yclose  FLOAT,
  change  FLOAT,
  volume  INTEGER,
  yield   FLOAT
  )"

$baseurl = "http://finance.yahoo.com/d/quotes.csv?f=sd1l1ohgpc1vy&s="

# fetch the mlp tickers from the db...
res = $db.execute "SELECT ticker FROM MLPMaster"

# fetch the quote from yahoo finance...
CSV.new(open("#{$baseurl}#{res.join('+')}")).each do |line|
  p line
  $db.execute "INSERT OR REPLACE INTO MLPQuotes
    VALUES 
    (?,?,?,?,?,?,?,?,?,?)", 
    [
      line[0].force_encoding("UTF-8"),
      line[1].force_encoding("UTF-8"),
      line[2].to_f,
      line[3].to_f,
      line[4].to_f,
      line[5].to_i,
      line[6].to_f,
      line[7].to_f,
      line[8].to_i,
      line[9].to_f
    ]
end
