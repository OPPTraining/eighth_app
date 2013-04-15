# == Schema Information
#
# Table name: attendances
#
#  id              :integer          not null, primary key
#  coursesectionid :integer
#  useremail       :string(255)
#  didattend       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Attendance < ActiveRecord::Base
  attr_accessible :coursesectionid, :didattend, :useremail

  belongs_to :coursesections
end
