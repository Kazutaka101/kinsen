dinners = ["山菜コース", "海鮮コース", "和牛コース", "海鮮和牛コース", "和牛食べ放題コース" ]
dates_start = ["2021-1-10", "2021-2-1", "2021-3-1"]
dates_end = ["2021-1-31", "2021-2-28", "2021-3-31"]

0.upto(14) do |idx|
    p idx
    dinner_num = idx % 6
    date_num = idx % 4
    type_num  = (idx % 3) + 1
    type = Type.find(type_num)
    name = "#{dinners[dinner_num]}#{type.name}"
    Plan.create(
        name: name,
        dinner_id: dinners[dinner_num],
        plan_start: dates_start[date_num],
        plan_end:  dates_end[date_num]
    )
end
