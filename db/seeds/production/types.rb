names = ["川側", "露天風呂付き", "和室"]
1.upto(3) do |idx|
	p names[idx%3].to_s
	Type.create(
		id: idx,
		name: names[idx%3].to_s,
		# roomtype_id: idx,
		# plan_id: 1
	)
end

Type.create(
	id: 99,
	name: "旅館のフロント",
	# roomtype_id: 99,
	# plan_id: 99
)

Type.create(
	id: 100,
	name: "バックの電話番",
	# roomtype_id: 99,
	# plan_id: 99
)