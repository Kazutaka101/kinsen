fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
names = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
0.upto(9) do |idx|
    Member.create(
        name: "#{fnames[idx%4]} #{gnames[idx%3]}",
        gender: [1, 1, 2][idx%3],
        telephone: 123456789,
        email: "#{names[idx]}@example.com",
        address: "神奈川県川崎市多摩区東三田2-1-1",
        birthday: "1981-12-01",
        password: "kinsen!",
        password_confirmation: "kinsen!"
    )
end