--list.of.major.description.and.class.code.and.class.subject.required.for.Gen.business--

select Description, c.Code, Subject
	from Majorclass mc
	join major m
		on m.id = mc.MajorId
	join Class c
		on c.id = mc.ClassId
			where Description = 'general business'

		
