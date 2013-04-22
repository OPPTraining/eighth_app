# == Schema Information
#
# Table name: attendances
#
#  id              :integer          not null, primary key
#  coursesectionid :integer
#  didattend       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  approved        :boolean
#  user_id         :integer
#

class Attendance < ActiveRecord::Base
  attr_accessible :coursesectionid, :didattend, :user_id, :approved

  belongs_to :coursesection
  belongs_to :user
end
