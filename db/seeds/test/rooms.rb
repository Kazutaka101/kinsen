0.upto(299) do |idx|
  p idx
  Room.create(
    name: "Room" + idx.to_s,
    about: "about",
    cost: 100 + (idx.to_i * 10)
  )
end

Room.create(
	id: 999,
	name: "フロント",
	about: "寝るには厳しい椅子しかない",
	cost: 1000
)