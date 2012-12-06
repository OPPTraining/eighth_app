# == Schema Information
#
# Table name: courses
#
#  id               :integer          not null, primary key
#  Coursename       :string(255)
#  CourseDepartment :string(255)
#  CourseNumber     :integer
#  CourseCredits    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :CourseCredits, :CourseDepartment, :CourseNumber, :Coursename
  has_many :microposts, dependent: :destroy
 

  validates :Coursename, presence: true, length: { maximum: 50 }
  validates :CourseDepartment, presence:   true
  validates :CourseNumber, presence: true
  validates :CourseCredits, presence: true
end
