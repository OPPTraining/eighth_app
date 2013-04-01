class AddFileToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :resource, :string
  end
end
