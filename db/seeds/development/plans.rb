#仮のシードデータ

plans = ["Japanese-style room with bed plan", "All-you-can-eat Wagyu plan", "Seaside balcony plan", "Mountainside balcony plan"]
0.upto(3) do |idx|
    Plan.create(
        name: plans[idx],
        dinner_id: idx,
        plan_start: "2020-10-1",
        plan_end: "2020-12-31",
        guest_max: 5,
        guest_min: 2
    )
end