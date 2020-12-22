0.upto(9) do |idx|
  Dinner.create(
    name: "dinner" + idx.to_s,
    dish: "お魚料理",
    cost: 1200+idx.to_i,
    kcal: 640.5
  )
end
