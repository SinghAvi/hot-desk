class AddFieldsToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :name, :string
    add_column :staffs, :role, :integer, default: 0
  end
end
