class Changeevalsection < ActiveRecord::Migration
  def change
  	rename_column :evaluations, :course_id, :coursesection_id
  end
end
