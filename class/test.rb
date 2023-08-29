require_relative 'student'
require_relative 'classroom'
require_relative 'book'
require_relative 'person'
require_relative 'rental'

michael = Student.new(32, 'Michael')
melissa = Student.new(23, 'Melissa')
austin = Student.new(23, 'Austin')

ruby_classroom = Classroom.new('Ruby Module')
ruby_classroom.add_student(melissa)
michael.classroom = ruby_classroom
ruby_classroom.add_student(austin)

puts "We have #{ruby_classroom.students.length} students \nIn #{ruby_classroom.label}"
puts(ruby_classroom.students.map { |s| "- #{s.name}" })

anna = Person.new(22, 'Anna')
john = Person.new(42, 'John')
silvester = Person.new(42, 'Silvester')

harry_potter = Book.new('Harry Potter', 'JK Rowling')
moby_dick = Book.new('Moby Dick', 'Herman Mervile')

Rental.new(Date.today, harry_potter, anna)
Rental.new(Date.today, harry_potter, john)
Rental.new(Date.today, moby_dick, silvester)
Rental.new(Date.today, moby_dick, john)
Rental.new(Date.today, moby_dick, anna)

puts "\n"

puts "For #{moby_dick.title}\nWe have #{moby_dick.rentals.length} rentals"
puts(moby_dick.rentals.map { |r| "- #{r.person.name} at #{r.date}" })
puts "\n"
puts "For #{harry_potter.title}\nWe have #{harry_potter.rentals.length} rentals"
puts(harry_potter.rentals.map { |r| "- #{r.person.name} at #{r.date}" })
