# RSS Feed reader

require 'rubygems'
require 'open-uri'
require 'sqlite3'
require 'rss'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS RSSFeed(
  date  DATE NOT NULL,
  title VARCHAR NOT NULL,
  link  VARCHAR NOT NULL,
  desc  VARCHAR NOT NULL
  )"
$db.execute "DELETE FROM RSSFeed"

# list of keywords...
keyword_a = ['master limited partnership', 'mlp', 'pipeline', 'ngl', 'fracking', 'acmp']

# list of feeds...
url_a = ['http://phx.corporate-ir.net/corporate.rss?c=235260&Rule=Cat=news~subcat=ALL']

# tries to find a match in the input on any of the words from the list
def wordmatch (input, wordlist)
  wordlist.each do |word|
    if input =~ /#{word}/i
      puts "Found keyword: #{word}"
      return true
    end
  end
  
  return false
end

# loop through each feed...
url_a.each do |url|
  begin
    # open the url...
    open(url) do |rss|
      # parse the feed...
      feed = RSS::Parser.parse(rss)
      puts "Channel Title: #{feed.channel.title}"
      # save the news items to the db...
      feed.items.each do |item|
        puts "Item: #{item.title}"
        if wordmatch(item.title, keyword_a) or wordmatch(item.description, keyword_a)
          $db.execute "INSERT INTO RSSFeed 
            VALUES 
            (?,?,?,?)",
            [
              item.date.strftime("%m-%d-%Y"),
              item.title,
              item.link,
              item.description
            ]
        end
      end
    end
  rescue OpenURI::HTTPError => e
    puts e.message
  end
end