0.upto(100) do |idx| 
	Assignment.create(
		type_id: idx,
		plan_id: idx
	)
end