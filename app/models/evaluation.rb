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

class Evaluation < ActiveRecord::Base
  attr_accessible :Q1, :Q10, :Q2, :Q3, :Q4, :Q5, :Q6, :Q7, :Q8, :Q9, :courseid, :useremail
end
