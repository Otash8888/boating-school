class Instructor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select do |boat_test|
      boat_test.instructor == self
    end
  end

  def found_test(student_name, test_name)
    self.boating_tests.find do |boat_test|
      boat_test.student.full_name == student_name && boat_test.test_name == test_name
    end
  end

  def fail_student(student_name, test_name)
    found_test = self.found_test(student_name, test_name)
    found_test.test_status = "failed"
  end

  def pass_student(student_name, test_name)
    found_test = self.found_test(student_name, test_name)
    found_test.test_status = "passed"
  end

  # *****Instructor#fail_student(student_name, test_name)
  # Changes a test's status to being failed
  # **** Instructor#pass_student(student_name, test_name)
  # Changes a test's status to being passed

end
