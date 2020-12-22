0.upto(299) do |idx|
  p idx
  Room.create(
    name: "Room" + idx.to_s,
    about: "about",
    cost: 100 + (idx.to_i * 10)
  )
end
