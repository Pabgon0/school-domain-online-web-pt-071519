class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(grade)
    roster.each do |class_grade, student|
      if class_grade == grade
        return student
      end
    end
  end
  
  def sort
    sorted_list = {}
    roster.each do |grade, student|
      sorted_list[grade] = student.sort
    end
    sorted_list
  end
end