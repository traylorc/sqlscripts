select c.id, code, subject, section, CONCAT(firstname, ' ', lastname) 'instructor'
	from class c
	join Instructor
	on c.InstructorId = Instructor.Id
	where section >= 300 and Section < 399
	order by section asc