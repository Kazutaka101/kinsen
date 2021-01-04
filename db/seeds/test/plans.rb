0.upto(9) do |idx|
  p idx
  Plan.create(
    name: ("Plan" + idx.to_s),
    dinner_id: idx,
    plan_start: "2021/1/01",
    plan_end: "2021/2/28",
    guest_max: 6,
    guest_min: 1,
  )
end
