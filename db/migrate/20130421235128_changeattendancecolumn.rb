class Changeattendancecolumn < ActiveRecord::Migration
  def change
  	add_column :attendances, :user_id, :integer
  	remove_column :attendances, :useremail
  end
end
