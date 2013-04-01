class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :coursesectionid
      t.string :useremail
      t.boolean :didattend

      t.timestamps
    end
  end
end
