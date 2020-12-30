names = ["松", "竹", "梅"]
0.upto(14) do |idx|
  idx = idx + 1
  p idx
  p names[idx % 3 ]
  Room.create(
    name: "Room" + idx.to_s,
    about: names[idx % 3],
    cost: 6000 + (idx.to_i * 10)
  )
end
