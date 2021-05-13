/*
insert student (Firstname, Lastname, StateCode, SAT, GPA, MajorId)
	values ('Noah', 'Phence', 'GA', 1235, 3.15, (select id from Major
														where Description = 'math'))
*/
update Student set
	majorid = (select id from Major
					where Description = 'math')
		where Firstname = 'Noah'

update Student set
	MajorId = (select id from Major
					where Code = 'ACCT')
					, GPA = 3.51
		where Firstname = 'Noah'

delete from Student
	where Id = 61

	select *
		from Student s
	join Major m
		on s.MajorId = m.Id
			where Firstname = 'Noah'


