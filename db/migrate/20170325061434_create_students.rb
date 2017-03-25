class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.references :class_group, foreign_key: true
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
