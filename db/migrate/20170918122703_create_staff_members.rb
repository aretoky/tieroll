class CreateStaffMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :staff_members do |t|
      t.string :company, null: false
      t.string :email, null: false
      t.string :password_digest
      t.date :start_time
      t.date :end_time
      t.boolean :suspended, default: false, null: false

      t.timestamps
    end
  end
end
