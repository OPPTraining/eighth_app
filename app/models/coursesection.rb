class Coursesection < ActiveRecord::Base
  attr_accessible :course_id, :coursesectiondate, :duration, :location
  belongs_to :course

  validates :course_id, presence: true
  validates :coursesectiondate, presence: true
  validates :duration, presence: true
  validates :location, presence: true
end
