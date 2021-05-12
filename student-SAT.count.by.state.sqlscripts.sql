--display states and number of students in each

select StateCode, count(*) 'quantity'
	from Student
			where SAT < 1000 
				group by StateCode
				having count(*) > 1
				order by count(*) desc
				