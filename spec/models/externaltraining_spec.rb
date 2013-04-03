# == Schema Information
#
# Table name: externaltrainings
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  facilitator        :string(255)
#  date               :datetime
#  duration           :integer
#  description        :text
#  supervisorapproval :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  externalresource   :string(255)
#

require 'spec_helper'

describe Externaltraining do
  pending "add some examples to (or delete) #{__FILE__}"
end
