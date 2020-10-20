def stockpicker(days)
  buy_hash = {}
  buy_results = {}
  max_buys = []
  for j in 0..(days.length - 2)
    i = j + 1
      for i in i..(days.length - 1)
        buy_results[i] = days[i] - days[j]
      end
    buy_hash[j] = buy_results
    buy_results = {}
  end
  i = 0
  until i > buy_hash.length - 1
    buy_hash[i].select { 
      |k, v| buy_results["#{i}, #{k}"] = v if v == buy_hash[i].values.max 
    }
    i += 1
  end
  buy_results = buy_results.select { |k, v| v == buy_results.values.max }
  return buy_results
end
