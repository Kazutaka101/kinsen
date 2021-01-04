0.upto(9) do |idx|
	Reservation.create(
		plan_id: idx,
		type_id: idx % 2,
		member_id: idx,
		guest_count: idx,
		date_start: Date.parse("2020/12/24"),
		date_end: Date.parse("2020/12/15"),
		morning: (idx % 2) == 0
	)
end

Reservation.create(
	id: 99,
	plan_id: 99,
	type_id: 99,
	member_id: 999,
	guest_count: 1,
	date_start: Date.parse("2020/12/27"),
	date_end: Date.parse("2020/12/28"),
	morning: true
)
