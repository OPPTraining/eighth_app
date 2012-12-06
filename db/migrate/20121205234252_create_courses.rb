class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :Coursename
      t.string :CourseDepartment
      t.integer :CourseNumber
      t.integer :CourseCredits

      t.timestamps
    end
  end
end
