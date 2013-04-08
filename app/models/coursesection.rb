# == Schema Information
#
# Table name: coursesections
#
#  id                :integer          not null, primary key
#  course_id         :integer
#  coursesectiondate :datetime
#  location          :string(255)
#  duration          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Coursesection < ActiveRecord::Base
  attr_accessible :coursesectiondate, :duration, :location, :course_id
  belongs_to :course

  validates :course_id, presence: true
  validates :coursesectiondate, presence: true
  validates :duration, presence: true
  validates :location, presence: true
end
