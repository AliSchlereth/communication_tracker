class CreateClassGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :class_groups do |t|
      t.references :staff, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
