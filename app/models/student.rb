class Student < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :house

  has_many :student_courses
  has_many :courses, through: :student_courses

end

# User Story 1 of 4
#
# As a visitor,
# When I visit '/students',
# I see a list of students with the following information:
# -Name
# -Age
# -House
# (e.g. "Name: Casseopia Black, Age: 14, House: Slytherin")
# User Story 2 of 4
#
# As a visitor,
# When I visit '/students/:id'
# I see a list of the students' courses.
#
# (e.g. "Defense against the Dark Arts"
#       "Herbology"
#       "Potions")
# User Story 3 of 4
# As a visitor,
# When I visit '/courses'
# I see a list of courses and the number of students enrolled in each course.
#
# (e.g. "Defense Against the Dark Arts: 5"
#       "Herbology: 10")
# User Story 4 of 4
#
# As a visitor,
# When I visit '/students'
# I see the average age of all students.
#
# (e.g. "Average Age: 14.5")
