require './lib/student'
require './lib/subject'

s = Student.new
s.name = 'John'
s.age = 20
m = Subject.new
m.name = 'Philosophy'
s.study(m)
