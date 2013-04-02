class AddExternalResource < ActiveRecord::Migration
  def change
    add_column :externaltrainings, :externalresource, :string
  end
end
