select * 
	from student
	left join major
		on student.majorid = major.id
		where gpa >= 3.5 and gpa < 4
		order by gpa desc, sat desc
