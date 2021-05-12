select 'A' as 'ABC', * 
	from Student
	where SAT > 1200
		union
	select 'B' as 'ABC', * 
	from Student
	where SAT <= 1200 and SAT > 1000
		union
	select 'C' as 'ABC', * 
	from Student
	where SAT <= 1000
		order by SAT desc