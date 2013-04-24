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
#  facilitator       :string(255)
#

class Coursesection < ActiveRecord::Base
  attr_accessible :coursesectiondate, :duration, :location, :course_id, :id, :facilitator
  belongs_to :course

  has_many :attendances, dependent: :destroy
  has_many :evaluations, dependent: :destroy
  

  validates :course_id, presence: true
  validates :coursesectiondate, presence: true
  validates :duration, presence: true
  validates :location, presence: true
end
