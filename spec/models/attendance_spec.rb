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

require 'spec_helper'

describe Attendance do
  pending "add some examples to (or delete) #{__FILE__}"
end
