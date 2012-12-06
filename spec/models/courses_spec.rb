# == Schema Information
#
# Table name: courses
#
#  id               :integer          not null, primary key
#  Coursename       :string(255)
#  CourseDepartment :string(255)
#  CourseNumber     :integer
#  CourseCredits    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'spec_helper'

describe Courses do
  pending "add some examples to (or delete) #{__FILE__}"
end
