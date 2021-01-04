names = ["川側", "和室", "露天風呂"]
0.upto(2) do |idx|
    p idx
    Type.create(
        name: names[idx]
    )
end

1.upto(5) do |idx|
    p idx
    room = Room.find(idx)
    type = Type.find_by(name: "川側")
    room.types << type
    
end
6.upto(9) do |idx|
    p idx
    room = Room.find(idx)
    type = Type.find_by(name: "和室")
    room.types << type
end

10.upto(15) do |idx|
    p idx
    room = Room.find(idx)
    type = Type.find_by(name: "露天風呂")
    room.types << type
end
