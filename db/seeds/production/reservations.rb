0.upto(9) do |idx|
  idx = idx + 1
  Reservation.create(
    plan_id: idx,
    type_id: idx % 2,
    member_id: idx % 8,
    guest_count: idx,
    date_start: Date.parse("2020-12-"+ idx),
    date_end: Date.parse("2020-12-" + idx + 4),
    morning: (idx % 2) == 0
  )
end
