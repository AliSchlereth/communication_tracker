class AddFirstAndLastToStaffs < ActiveRecord::Migration[5.0]
  def change
    remove_column :staffs, :name
    add_column :staffs, :first_name, :string
    add_column :staffs, :last_name, :string
  end
end
