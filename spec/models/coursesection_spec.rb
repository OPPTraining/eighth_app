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
#

require 'spec_helper'

describe Coursesection do
  pending "add some examples to (or delete) #{__FILE__}"
end
