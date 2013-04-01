# == Schema Information
#
# Table name: courses
#
#  id                :integer          not null, primary key
#  coursename        :string(255)
#  coursedescription :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :coursedescription, :coursename, :resource
  has_many :coursesections, dependent: :destroy
  has_many :evaluations

  mount_uploader :resource, ResourceuploadUploader
  

end
