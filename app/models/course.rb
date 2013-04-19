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

  mount_uploader :resource, ResourceuploadUploader
  
  acts_as_taggable_on :tags

 def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
