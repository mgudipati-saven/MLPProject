# Compute price returns

require 'rubygems'
require 'sqlite3'
require 'date'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS PriceReturns(
  ticker  VARCHAR(16) NOT NULL,
  date    DATE NOT NULL,
  ytd     FLOAT,
  qtd     FLOAT,
  mtd     FLOAT,
  wtd     FLOAT,
  yr1     FLOAT,
  qtr1    FLOAT,
  mon1    FLOAT,
  wk1     FLOAT
  )"
$db.execute "DELETE FROM PriceReturns"

# calculate ytd returns...
def ytd(ticker)
  # obtain the last trading day of the previous year for which data is available...
  yr = Date.today.prev_year.year # 2012
  res = $db.execute "SELECT date FROM MLPHist WHERE ticker = '#{ticker}' AND date >= '#{yr}-12-01' AND date <= '#{yr}-12-31'"
  dt = nil
  if res.empty?
    # no data found for the last year, obtain the first trading day of the current year for which data is available...
    yr = Date.today.year # 2013
    res = $db.execute "SELECT date FROM MLPHist WHERE ticker = '#{ticker}' AND date >= '#{yr}-01-01' AND date <= '#{Date.today.to_s}'"
    if not res.empty?
      dt = res[-1][0]
    end
  else
    dt = res[0][0]
  end

  if dt
    # obtain the closing price for the start date...
    close = $db.execute "SELECT close FROM MLPHist WHERE ticker = ? AND date = ?", [ticker, dt]
    if close[0]
      # obtain the last price for the current day...
      last = $db.execute "SELECT last FROM MLPQuotes WHERE ticker = ?", ticker
      
      if last[0]
        return (last[0][0].to_f-close[0][0].to_f)/close[0][0].to_f * 100
      end
    end
  end

  return 0
end

# calculate qtd returns...
def qtd(ticker)
  return 0
end

# calculate mtd returns...
def mtd(ticker)
  return 0
end

# calculate wtd returns...
def wtd(ticker)
  return 0
end

# calculate 1 year returns...
def yr1(ticker)
  return 0
end

# calculate 1 quarter returns...
def qtr1(ticker)
  return 0
end

# calculate 1 month returns...
def mon1(ticker)
  return 0
end

# calculate 1 week returns...
def wk1(ticker)
  return 0
end

# fetch the mlp tickers from the db...
res = $db.execute "SELECT ticker FROM MLPMaster"
res.each do |rec|
  puts rec[0]
  ticker = rec[0]
  $db.execute "INSERT INTO PriceReturns 
    VALUES 
    (?,?,?,?,?,?,?,?,?,?)",
    [
      ticker,
      Date.today.to_s,
      ytd(ticker),
      qtd(ticker),
      mtd(ticker),
      wtd(ticker),
      yr1(ticker),
      qtr1(ticker),
      mon1(ticker),
      wk1(ticker)
    ]
end
  