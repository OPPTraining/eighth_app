# == Schema Information
#
# Table name: evaluations
#
#  id         :integer          not null, primary key
#  useremail  :string(255)
#  courseid   :integer
#  Q1         :integer
#  Q2         :integer
#  Q3         :integer
#  Q4         :integer
#  Q5         :integer
#  Q6         :integer
#  Q7         :text
#  Q8         :text
#  Q9         :text
#  Q10        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Evaluation do
  pending "add some examples to (or delete) #{__FILE__}"
end
