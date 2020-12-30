dinners = ["山菜コース","海鮮コース", "和牛コース", "海鮮和牛コース", "和牛食べ放題セット"]

0.upto(4) do |idx|
  p dinners[idx]
  Dinner.create(
    name: dinners[idx],
    dish: "地元の名産品をふんだんに使った料理です。",
    cost: 1200+idx.to_i,
    kcal: 640 + (idx.to_i * 100)
  )
end
