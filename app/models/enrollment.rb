class Enrollment < ActiveRecord::Base
  attr_accessible :student_id

  belongs_to :course, class_name: "Course"
  belongs_to :student, class_name: "User"
end
