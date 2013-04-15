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
#  approved        :boolean
#

class Attendance < ActiveRecord::Base
  attr_accessible :coursesectionid, :didattend, :useremail, :approved

  belongs_to :coursesection
  belongs_to :user
end
