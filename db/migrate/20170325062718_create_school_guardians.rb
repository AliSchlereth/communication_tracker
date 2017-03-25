class CreateSchoolGuardians < ActiveRecord::Migration[5.0]
  def change
    create_table :school_guardians do |t|
      t.references :school, foreign_key: true
      t.references :guardian, foreign_key: true

      t.timestamps
    end
  end
end
