class AddFieldsToDesk < ActiveRecord::Migration[5.2]
  def change
    add_column :desks, :name, :string
	add_column :desks, :occupied, :boolean, default: false
  end
end
