0.upto(10) do |idx|
  p idx
  Roomtype.create(
    type_id: (idx / 3).to_i,
    room_id: (idx / 3).to_i
  )
end

Roomtype.create(
	type_id: 99,
	room_id: 99
)