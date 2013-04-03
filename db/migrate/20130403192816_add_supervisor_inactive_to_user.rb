class AddSupervisorInactiveToUser < ActiveRecord::Migration
  def change
  	add_column :users, :supervisor, :boolean, default: false
  	add_column :users, :inactive, :boolean, default: false
  end
end
