class AddDeviseFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    change_table :users do |t|
      t.string :encrypted_password, null: false, default: ""
      t.datetime :reset_password_sent_at
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
    end
  end
end
