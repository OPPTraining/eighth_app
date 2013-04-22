class Addthestupidunderscore < ActiveRecord::Migration
  def change
  	rename_column :attendances, :coursesectionid, :coursesection_id
  end
end
