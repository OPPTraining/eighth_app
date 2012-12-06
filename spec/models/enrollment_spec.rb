require 'spec_helper'

describe Enrollment do

  let(:course_id) { FactoryGirl.create(:course) }
  let(:student_id) { FactoryGirl.create(:user) }
  let(:relationship) { student.relationships.build(student_id: student.id) }

  subject { relationship }

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to student_id" do
      expect do
        Relationship.new(student_id: student.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
end
