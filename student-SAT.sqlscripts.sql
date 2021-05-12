select StateCode, count(*) 'quantity'
	from Student
			where SAT < 1000
				group by StateCode
				order by count(*) desc
				