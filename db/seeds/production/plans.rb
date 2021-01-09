# 0.upto(9) do |idx|
# 	p idx
# 	Plan.create(
# 		name: ("Plan" + idx.to_s),
# 		# dinner_id: idx,
# 		dinner_id: (idx%5+1),
# 		plan_start: Date.today-1,
# 		plan_end: Date.today+idx+30,
# 		guest_max: 6,
# 		guest_min: 1,
# 		# type_id: 1
# 	)
# end

# Plan.create(
# 	id: 99,
# 	name: "従業員専用特別残業プラン",
# 	dinner_id: 99,
# 	plan_start: Date.today-1,
# 	plan_end: Date.today+365,
# 	guest_max: 10,
# 	guest_min: 1,
# 	# type_id: 99
# )

#川側:1 , 露天風呂つき:2 , 和室:3

Plan.create(   #露天風呂あり 景色良好 和室
	id: 1,
	name: "THE琴線",
	dinner_id: 1,
	plan_start: Date.today-1,
	plan_end: Date.today+30,
	guest_max: 4,
	guest_min: 1
)

Plan.create(   #景色良好
	id: 2,
	name: "琴線おもてなしプラン",
	dinner_id: 1,
	plan_start: Date.today-1,
	plan_end: Date.today+30,
	guest_max: 8,
	guest_min: 1
)

Plan.create(   #、露天風呂あり
	id: 3,
	name: "ぷち贅沢プラン",
	dinner_id: 2,
	plan_start: Date.today-1,
	plan_end: Date.today+30,
	guest_max: 6,
	guest_min: 1
)

Plan.create(   # 露天風呂
	id: 4,
	name: "お二人様プラン",
	dinner_id: 3,
	plan_start: Date.today-1,
	plan_end: Date.today+30,
	guest_max: 2,
	guest_min: 2
)

Plan.create(   # type指定 無し
	id: 5,
	name: "ファミリープラン",
	dinner_id: 4,
	plan_start: Date.today-1,
	plan_end: Date.today+30,
	guest_max: 8,
	guest_min: 3
)

Plan.create(   # 露天風呂
	id: 6, 
	name: "お二人様プラン -ヘルシーディナー-",
	dinner_id: 5,
	plan_start: Date.today-1,
	plan_end: Date.today+30,
	guest_max: 2,
	guest_min: 2
)