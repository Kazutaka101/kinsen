0.upto(10) do |idx|
  p idx
  Roomtype.create(
    type_id: (idx / 3),
    room_id: (idx / 3)
  )
end
