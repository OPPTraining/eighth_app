# == Schema Information
#
# Table name: courses
#
#  id                :integer          not null, primary key
#  coursename        :string(255)
#  coursedescription :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  resource          :string(255)
#

class Course < ActiveRecord::Base
  attr_accessible :coursedescription, :coursename, :resource, :tag_list
  has_many :coursesections, dependent: :destroy
  has_many :evaluations

  mount_uploader :resource, ResourceuploadUploader
  
  acts_as_taggable_on :tags

end
