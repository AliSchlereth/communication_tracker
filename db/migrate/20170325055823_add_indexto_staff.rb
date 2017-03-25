class AddIndextoStaff < ActiveRecord::Migration[5.0]
  def change
    add_reference :staffs, :school, foreign_key: true
  end
end
