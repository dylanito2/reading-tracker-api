School.create!(name: 'PS158', street_address: '123 1st St', city: 'New York', state: 'NY', zip: 10021)
Admin.create!(email: 'admin@school.com', first_name: 'Mr.', last_name: 'Principal', school_id: 1)
c = Classroom.create!(room_number: '410', grade: 4, name: 'Mr. Teachers 4th grade')
t = Teacher.create!(email: 'teacher@school.com', first_name: 'Mr.', last_name: 'Teacher', password_digest: '123123', school_id: 1)
c.teachers << t
Student.create!(first_name: 'Dylan', last_name: 'Breves', classroom_id: 1)
Student.create!(first_name: 'Ian', last_name: 'Boynton', classroom_id: 1)
Student.create!(first_name: 'Noah', last_name: 'Schecter', classroom_id: 1)
Student.create!(first_name: 'Liz', last_name: 'Masi', classroom_id: 1)
Student.create!(first_name: 'Erin', last_name: 'Smith', classroom_id: 1)
Student.create!(first_name: 'Steven', last_name: 'Nunbez', classroom_id: 1)

c = Classroom.create!(room_number: '510', grade: 5, name: 'Mr. Teachers 4th grade')
t = Teacher.create!(email: 'teacher@school.com', first_name: 'Ms.', last_name: 'OtherTeacher', password_digest: '123123', school_id: 1)
c.teachers << t
Student.create!(first_name: 'Dylan', last_name: 'Breves', classroom_id: 2)
Student.create!(first_name: 'Ian', last_name: 'Boynton', classroom_id: 2)
Student.create!(first_name: 'Noah', last_name: 'Schecter', classroom_id: 2)
Student.create!(first_name: 'Liz', last_name: 'Masi', classroom_id: 2)
Student.create!(first_name: 'Erin', last_name: 'Smith', classroom_id: 2)
Student.create!(first_name: 'Steven', last_name: 'Nunbez', classroom_id: 2)
Conference.create!(teacher_id: 2, student_id: 1)
Comment.create!(text: "Great job!", conference_id: 1)
ReadingLevel.create!(score: "1", conference_id: 1)
