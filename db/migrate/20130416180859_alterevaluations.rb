class Alterevaluations < ActiveRecord::Migration
  def change
  	remove_column :evaluations, :Q5
  	remove_column :evaluations, :Q6
  	rename_column :evaluations, :Q7, :Q5
  	rename_column :evaluations, :Q8, :Q6
  	rename_column :evaluations, :Q9, :Q7
  	rename_column :evaluations, :Q10, :Q8
  end
end
