# room_name = %w(六段 八段 会津 福山 桐 花梨 紫檀 紅木 欅 槻 高尚 豊麗 童心 重厚 榮)

# 1.upto(15) do |idx|
# 	p idx
# 	Room.create(
# 		id: idx,
# 		name: room_name[idx-1],
# 		about: "about",
# 		cost: 60000 + (idx.to_i * 10)
# 	)
# end

Room.create(
	id: 1,
	name: "六段",
	about: "露天風呂つきの景色良好な和洋室",
	cost: 70001
)

Room.create(
	id: 2,
	name: "八段",
	about: "露天風呂つきの景色良好な和室",
	cost: 70002
)

Room.create(
	id: 3,
	name: "会津",
	about: "露天風呂つきの和洋室",
	cost: 60003
)

Room.create(
	id: 4,
	name: "福山",
	about: "露天風呂つきの和室",
	cost: 60004
)

Room.create(
	id: 5,
	name: "桐",
	about: "景色良好な和洋室",
	cost: 55005
)

Room.create(
	id: 6,
	name: "花梨",
	about: "景色良好な和洋室",
	cost: 55006
)

Room.create(
	id: 7,
	name: "紫檀",
	about: "景色良好な和洋室",
	cost: 55007
)

Room.create(
	id: 8,
	name: "紅木",
	about: "景色良好な和洋室",
	cost: 55008
)

Room.create(
	id: 9,
	name: "欅",
	about: "景色良好な和室",
	cost: 55009
)

Room.create(
	id: 10,
	name: "槻",
	about: "景色良好な和室",
	cost: 55010
)

Room.create(
	id: 11,
	name: "高尚",
	about: "和洋室",
	cost: 50011
)

Room.create(
	id: 12,
	name: "豊麗",
	about: "和洋室",
	cost: 50012
)

Room.create(
	id: 13,
	name: "童心",
	about: "和洋室",
	cost: 50013
)

Room.create(
	id: 14,
	name: "榮",
	about: "和洋室",
	cost: 50014
)

Room.create(
	id: 15,
	name: "重厚",
	about: "和室",
	cost: 50015
)




# Room.create(
# 	id: 999,
# 	name: "フロント",
# 	about: "寝るには厳しい椅子しかない",
# 	cost: 1000
# )



# 0.upto(299) do |idx|
# 	p idx
# 	Room.create(
# 		name: "Room" + idx.to_s,
# 		about: "about",
# 		cost: 20000 + (idx.to_i * 10)
# 	)
# end


