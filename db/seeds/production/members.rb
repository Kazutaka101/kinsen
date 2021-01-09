# require "csv"
# csv = CSV.read("personal_infomation.csv", {headers: true, encoding: Encoding::UTF_8})
# #p csv

# csv_size = csv.size

# p csv_size

# indices = (2..csv_size).to_a.sample(100)
# p indices

# p csv[1][10]

# 0.upto(csv_size - 1) do |idx|
# 	if indices.include?(idx)
# 		p idx
# 		#p csv[idx][0].to_s
# 		Member.create(
# 			name: csv[idx][0].to_s,
# 			gender: (csv[idx][1] == 0),
# 			telephone: csv[idx][2],
# 			email: csv[idx][3].to_s,
# 			address: csv[idx][4].to_s << csv[idx][5].to_s << csv[idx][6].to_s << csv[idx][7].to_s << csv[idx][8].to_s << csv[idx][9].to_s,
# 			birthday: Date.parse(csv[idx][10]),
# 			password: "kinsen!",
# 			password_confirmation: "kinsen!"
# 		)
# 	end
# end


Member.create(
	
	name: "test_user",
	gender: 1,
	telephone: "test",
	email: "test@test.com",
	address: "神奈川県 藤沢市 川名",
	birthday: "2000-04-16",
	password: "kinsen!",
	password_confirmation: "kinsen!"
)
