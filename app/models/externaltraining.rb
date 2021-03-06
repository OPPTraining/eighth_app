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

class Externaltraining < ActiveRecord::Base
  attr_accessible :date, :description, :duration, :facilitator, :supervisorapproval, :title, :externalresource

  mount_uploader :externalresource, ExternalresourceUploader
end
