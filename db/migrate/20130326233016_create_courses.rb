class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :coursename
      t.text :coursedescription

      t.timestamps
    end
  end
end
