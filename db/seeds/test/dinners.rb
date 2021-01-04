0.upto(9) do |idx|
  Dinner.create(
  	id: idx,
    name: "dinner" + idx.to_s,
    dish: "お魚料理",
    cost: 1200+idx.to_i,
    kcal: 640.5
  )
end

Dinner.create(
	id: 99,
	name: "従業員用のやつ",
	dish: "おいしいまかないごはん",
	cost: 500,
	kcal: 1000
)