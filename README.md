# Latest Stock Price Gem

### Usage

You can get the latest stock price data by doing these commands

```
  LatestStockPrice.all_stock_prices
  LatestStockPrice.price_for_indices(<ADD INDICE STRING HERE>)
  LatestStockPrice.list # you can find the indices here
```

### Stock attributes

The stock that will display is wrapped around the `LatestStockPrice::Stock` class. You can access the variables here:

```
  stock = LatestStockPrice::Stock.new(stock_data_from_api)

  stock.change # 87.59999999999854,
  stock.day_high # 22813.45,
  stock.day_low # 22692,
  stock.identifier # "NIFTY PVT BANK",
  stock.last_price # 22791.8,
  stock.last_update_time # "24-Nov-2023 16:00:00",
  stock.open # 22720.75,
  stock.p_change # 0.39,
  stock.per_change_30d # 1.02,
  stock.per_change_365d # 4.77,
  stock.previous_close # 22704.2,
  stock.symbol # "NIFTY PVT BANK",
  stock.total_traded_value # 42418066117.55,
  stock.total_traded_volume # 74532015,
  stock.year_high # 23955,
  stock.year_low # 19592.9

```
