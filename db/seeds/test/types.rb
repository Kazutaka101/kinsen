names = ["川側", "露天風呂付き", "和室"]
0.upto(2) do |idx|
  p names[idx].to_s
  Type.create(
    name: names[idx].to_s,
    roomtype_id: idx,
    plan_id: 1
  )
end

Type.create(
	id: 99,
	name: "旅館のフロント",
	roomtype_id: 99,
	plan_id: 1
)
