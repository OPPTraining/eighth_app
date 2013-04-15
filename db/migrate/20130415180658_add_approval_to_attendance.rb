class AddApprovalToAttendance < ActiveRecord::Migration
  def change
  	  	add_column :attendances, :approved, :boolean, :null => true
  end
end
