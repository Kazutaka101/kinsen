require 'test_helper'

class KinsenTest < ActionDispatch::IntegrationTest
	test "reserve success" do
		post "/session", params: { email: "test@test.com", password: "kinsen!" }
		assert_difference "Reservation.count", +1 do
			post "/reservations", params: { plan_id: 1,	member_id: 1,
				guest_count: 1, date_start: "2021/01/29",
				date_end: "2021/01/30", morning: 1, kawa: true, roten: true, wasitsu: true}
		end
		assert_response :redirect
	end

	# 共通テスト 全部屋使っても100人も予約をとることはできないので、validationで弾ける
	test "reserve failure" do
		post "/session", params: { email: "test@test.com", password: "kinsen!" }
		
		post "/reservations", params: { plan_id: 1,	member_id: 1,
			kawa: true, roten: true, wasitsu: true, guest_count: 100, date_start: "2021/01/29",
			date_end: "2021/01/30", morning: 1}
		
		assert_response :success
		assert_select "p#error", "予約に失敗しました。最初からやり直してください。"
	end
end
