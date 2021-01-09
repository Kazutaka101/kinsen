# 0.upto(80) do |idx| 
# 	Assignment.create(
# 		type_id: idx,
# 		plan_id: idx
# 	)
# end

Assignment.create(
	id: 99,
	type_id: 99,
	plan_id: 99,
)

Assignment.create(
	id: 100,
	type_id: 100,
	plan_id: 99,
)

# Assignment.create(
# 	id: 100,
# 	type_id: 0,
# 	plan_id: 99,
# )

# ======== 川側 ========

Assignment.create(
	type_id: 1,
	plan_id: 1
)

Assignment.create(
	type_id: 1,
	plan_id: 2
)


# ======== 露天風呂つき ========

Assignment.create(
	type_id: 2,
	plan_id: 1
)

Assignment.create(
	type_id: 2,
	plan_id: 3
)

Assignment.create(
	type_id: 2,
	plan_id: 4
)

Assignment.create(
	type_id: 2,
	plan_id: 6
)


# ======== 和室 ========

Assignment.create(
	type_id: 3,
	plan_id: 1
)
