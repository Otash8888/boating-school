require_relative '../config/environment'

ana = Student.new("Anna", "Love")
tom = Instructor.new("Tom Blah")

ana.add_boating_test(tom, "Test 1", "Unknown")

Pry.start
