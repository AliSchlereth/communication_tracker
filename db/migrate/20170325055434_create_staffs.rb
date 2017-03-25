class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :uid
      t.string :name
      t.string :email
      t.string :image
      t.string :token
      t.string :refresh_token
      t.string :expires_at

      t.timestamps
    end
  end
end
