0.upto(9) do |idx|
  Reservation.create(
    plan_id: idx + 1,
    type_id: idx % 2,
    member_id: idx % 3,
    guest_count: idx,
    date_start: Date.parse("2020/12/24"),
    date_end: Date.parse("2020/12/15"),
    morning: (idx % 2) == 0
  )
end
