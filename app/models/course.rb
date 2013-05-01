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
    find(:all, :conditions => ['name ILIKE ?', "%#{search}%"])
  else
    find(:all)
  end
  end
  def self.to_csv(options = {})
  	 CSV.generate(options) do |csv|
  	 	csv << column_names
  	 	all.each do |course|
  	 		csv << course.attributes.values_at(*column_names)
  	 	end
  	 end
  end

end
