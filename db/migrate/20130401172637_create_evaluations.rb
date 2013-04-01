class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :useremail
      t.integer :courseid
      t.integer :Q1
      t.integer :Q2
      t.integer :Q3
      t.integer :Q4
      t.integer :Q5
      t.integer :Q6
      t.text :Q7
      t.text :Q8
      t.text :Q9
      t.text :Q10

      t.timestamps
    end
  end
end
