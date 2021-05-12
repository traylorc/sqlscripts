--list.of.classes.and.corresponding.instructors--

select concat(i.Lastname, ', ', i.Firstname) 'Instructor', c.Subject
	from Class c
		join Instructor i
			on  c.InstructorId = i.Id
				order by Instructor 