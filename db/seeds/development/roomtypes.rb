# 0.upto(10) do |idx|
# 	p idx
# 	Roomtype.create(
# 		type_id: (idx / 3).to_i,
# 		room_id: (idx / 3).to_i
# 	)
# end

Roomtype.create(
	type_id: 99,
	room_id: 999
)

# ======== 露天風呂あり ========

Roomtype.create(
	type_id: 1,   #露天風呂あり
	room_id: 1
)

Roomtype.create(
	type_id: 1,
	room_id: 2
)

Roomtype.create(
	type_id: 1,
	room_id: 3
)

Roomtype.create(
	type_id: 1,
	room_id: 4
)


# ======== 和室 ========

Roomtype.create(
	type_id: 2,   #和室
	room_id: 2
)

Roomtype.create(
	type_id: 2,
	room_id: 4
)

Roomtype.create(
	type_id: 2,
	room_id: 9
)

Roomtype.create(
	type_id: 2,
	room_id: 10
)

Roomtype.create(
	type_id: 2,
	room_id: 15
)


# ======== 川側 ========

Roomtype.create(
	type_id: 3,   #川側
	room_id: 1
)

Roomtype.create(
	type_id: 3,
	room_id: 2
)

Roomtype.create(
	type_id: 3,
	room_id: 5
)

Roomtype.create(
	type_id: 3,
	room_id: 6
)

Roomtype.create(
	type_id: 3,
	room_id: 7
)

Roomtype.create(
	type_id: 3,
	room_id: 8
)

Roomtype.create(
	type_id: 3,
	room_id: 9
)

Roomtype.create(
	type_id: 3,
	room_id: 10
)




