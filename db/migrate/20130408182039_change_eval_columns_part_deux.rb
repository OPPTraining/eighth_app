class ChangeEvalColumnsPartDeux < ActiveRecord::Migration
  def change
  	rename_column :evaluations, :courseid, :course_id
  end
end
