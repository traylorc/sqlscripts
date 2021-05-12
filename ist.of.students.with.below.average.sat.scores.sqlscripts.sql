--list.of.students.with.below.average.sat.scores--

select Firstname, Lastname, SAT, GPA
	from Student
	where SAT < (select avg(SAT)
		from Student)
			order by SAT 

	