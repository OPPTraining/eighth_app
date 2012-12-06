class Courses < ActiveRecord::Base
  attr_accessible :CourseCredits, :CourseDepartment, :CourseNumber, :Coursename
  has_many :microposts, dependent: :destroy
  
  before_save :create_remember_token

  validates :Coursename, presence: true, length: { maximum: 50 }
  validates :CourseDepartment, presence:   true
  validates :CourseNumber, presence: true, length: { minimum: 6 }
  validates :CourseCredits, presence: true
end
