# == Schema Information
#
# Table name: attendances
#
#  id               :integer          not null, primary key
#  coursesection_id :integer
#  didattend        :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  approved         :boolean
#  user_id          :integer
#

require 'spec_helper'

describe Attendance do
  pending "add some examples to (or delete) #{__FILE__}"
end
