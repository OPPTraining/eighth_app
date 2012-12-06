class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end

    add_index :relationships, :course_id
    add_index :relationships, :student_id
    add_index :relationships, [:course_id, :student_id], unique: true
  end
end
