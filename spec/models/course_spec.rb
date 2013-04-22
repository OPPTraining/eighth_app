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

require 'spec_helper'

describe Course do
  pending "add some examples to (or delete) #{__FILE__}"
end
