class CreateExternaltrainings < ActiveRecord::Migration
  def change
    create_table :externaltrainings do |t|
      t.string :title
      t.string :facilitator
      t.datetime :date
      t.integer :duration
      t.text :description
      t.boolean :supervisorapproval

      t.timestamps
    end
  end
end
