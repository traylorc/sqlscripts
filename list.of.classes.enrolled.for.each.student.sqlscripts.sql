--list.of.classes.enrolled.for.each.student--

select Firstname, Lastname, Subject
	from Student s
		join StudentClass sc
			on sc.StudentId = s.Id
			join Class cl
				on cl.Id = sc.ClassId