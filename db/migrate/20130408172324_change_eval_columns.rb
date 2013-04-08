class ChangeEvalColumns < ActiveRecord::Migration
  def change
  	add_column :evaluations, :user_id, :integer
  	remove_column :evaluations, :useremail
  end
end
