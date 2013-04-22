class Addteacher < ActiveRecord::Migration
  def change
  	add_column :coursesections, :facilitator, :string
  end
end
