0.upto(9) do |idx|
    idx = idx + 1
    p idx
    Assignment.create(
        plan_id: idx, 
        type_id: (idx % 3) + 1

    )
end