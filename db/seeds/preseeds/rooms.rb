1.upto(10) do |idx|
    room_num = (100 + idx).to_s
    if idx <= 5
        Room.create(
            name: "K" + room_num,
            about: "川を眺めることができる景観抜群なお部屋です",
            cost: 5000
        )
    elsif idx <= 10
        Room.create(
            name: "W" + room_num,
            about: "伝統的な日本家屋でゆったりとした時間を",
            cost: 5000
        )
    end
end

1.upto(5) do |idx|
    room_num = (200 + idx).to_s
    Room.create(
        name: "R" + room_num,
        about: "開放感あふれる露天風呂",
        cost: 10000
    )
end