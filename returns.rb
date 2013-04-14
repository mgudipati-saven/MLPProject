# Compute price and total returns

require 'rubygems'
require 'sqlite3'
require 'date'

$db = SQLite3::Database.new('mlp.sqlite')
$db.execute "CREATE TABLE IF NOT EXISTS MLPPerf(
  ticker      VARCHAR(16) NOT NULL,
  date        DATE NOT NULL,
  ytd_price   FLOAT,
  ytd_tot     FLOAT,
  qtd_price   FLOAT,
  qtd_tot     FLOAT,
  mtd_price   FLOAT,
  mtd_tot     FLOAT,
  wtd_price   FLOAT,
  wtd_tot     FLOAT,
  yr1_price   FLOAT,
  yr1_tot     FLOAT,
  qtr1_price  FLOAT,
  qtr1_tot    FLOAT,
  mon1_price  FLOAT,
  mon1_tot    FLOAT,
  wk1_price   FLOAT,
  wk1_tot     FLOAT
  )"
$db.execute "DELETE FROM MLPPerf"

# calculate ytd returns...
def ytdother(ticker)
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
        # obtain distributions...
        yr = Date.today.year # 2013
        res = $db.execute "SELECT SUM(dividend) FROM MLPDistr WHERE ticker = '#{ticker}' AND exdate >= '#{yr}-01-01'"
        divsum = 0.0
        if res[0][0]
          divsum = res[0][0]
        end
        return [
          (last[0][0]-close[0][0])/close[0][0] * 100,
          (last[0][0]+divsum-close[0][0])/close[0][0] * 100,          
          ]
      end
    end
  end

  return []
end

# obtains the price at the beginning of the time period specified.
def beginPrice(ticker, from, to)
  res = $db.execute "SELECT close FROM MLPHist WHERE ticker = '#{ticker}' AND date >= '#{from}' AND date <= '#{to}'"
  if !res.empty? and res[-1][0]
    return res[-1][0]
  end

  return 0.0
end

# obtain the current price.
def currentPrice(ticker)
  res = $db.execute "SELECT last FROM MLPQuotes WHERE ticker = '#{ticker}'"
  if !res.empty? and res[0][0]
    return res[0][0]
  end
  
  return 0.0
end

# obtain the sum of dividends distributed during the time period specified.
def dividendSum(ticker, from ,to)
  res = $db.execute "SELECT SUM(dividend) FROM MLPDistr WHERE ticker = '#{ticker}' AND exdate >= '#{from}' AND exdate <= '#{to}'"
  if res[0][0]
    return res[0][0]
  end

  return 0.0
end

# calculate ytd returns...
def ytd(ticker)
  # obtain the close price as on first trading day of the current year...
  begdate = "#{Date.today.year}-01-01"
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate qtd returns...
def qtd(ticker)
  # obtain the close price as on first trading day of the current quarter...
  qmon_a = ["01","04","07","10"]
  mon = qmon_a[(Date.today.mon-1)/3]
  begdate = "#{Date.today.year}-#{mon}-01"
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate mtd returns...
def mtd(ticker)
  # obtain the close price as on first trading day of the current month...
  begdate = "#{Date.today.strftime("%Y-%m")}-01"
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate wtd returns...
def wtd(ticker)
  # obtain the close price as on first trading day of the current week...
  begdate = Date.today.prev_day(Date.today.wday-1)
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate 1 year returns...
def yr1(ticker)
  # obtain the close price a year ago...
  begdate = Date.today.prev_year.to_s
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate 1 quarter returns...
def qtr1(ticker)
  # obtain the close price a quarter (3 months) ago...
  begdate = Date.today.prev_month(3).to_s
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate 1 month returns...
def mon1(ticker)
  # obtain the close price a month ago...
  begdate = Date.today.prev_month.to_s
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# calculate 1 week returns...
def wk1(ticker)
  # obtain the close price a week ago...
  begdate = Date.today.prev_day(7).to_s
  enddate = Date.today.to_s
  begprice = beginPrice(ticker, begdate, enddate)

  # obtain the current price...
  endprice = currentPrice(ticker)
  
  # obtain sum of distributions during the period...
  divsum = dividendSum(ticker, begdate, enddate)

  # price return...
  priceret = 0.0
  if begprice != 0.0
    priceret = (endprice-begprice)/begprice * 100
  end

  # total return...
  totret = 0.0
  if begprice != 0.0
    totret = (endprice+divsum-begprice)/begprice * 100
  end

  return [priceret, totret]
end

# fetch the mlp tickers from the db...
res = $db.execute "SELECT ticker FROM MLPMaster"
res.each do |rec|
  puts rec[0]
  ticker = rec[0]
  
  # compute performance returns...
  ytd = ytd(ticker)
  qtd = qtd(ticker)
  mtd = mtd(ticker)
  wtd = wtd(ticker)
  yr1 = yr1(ticker)
  qtr1 = qtr1(ticker)
  mon1 = mon1(ticker)
  wk1 = wk1(ticker)
  
  # db save...
  $db.execute "INSERT INTO MLPPerf 
    VALUES 
    (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
    [
      ticker,
      Date.today.to_s,
      ytd[0],
      ytd[1],
      qtd[0],
      qtd[1],
      mtd[0],
      mtd[1],
      wtd[0],
      wtd[1],
      yr1[0],
      yr1[1],
      qtr1[0],
      qtr1[1],
      mon1[0],
      mon1[1],
      wk1[0],
      wk1[1]
    ]
end
  