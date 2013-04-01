class CreateCoursesections < ActiveRecord::Migration
  def change
    create_table :coursesections do |t|
      t.integer :course_id
      t.datetime :coursesectiondate
      t.string :location
      t.integer :duration

      t.timestamps
    end
    add_index :coursesections, [:course_id, :created_at]
  end
end




