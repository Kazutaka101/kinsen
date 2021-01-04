0.upto(9) do |idx|
	p idx
	Plan.create(
		name: ("Plan" + idx.to_s),
		# dinner_id: idx,
		dinner_id: 0,
		plan_start: "2020/12/01",
		plan_end: "2020/12/31",
		guest_max: 6,
		guest_min: 1,
		type_id: 1
	)
end

Plan.create(
	id: 99,
	name: "冬景色特別プラン",
	dinner_id: 99,
	plan_start: "2020/12/01",
	plan_end: "2020/12/31",
	guest_max: 10,
	guest_min: 1,
	type_id: 99
)