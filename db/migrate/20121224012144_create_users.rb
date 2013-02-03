class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :email
      t.string :type
      t.boolean :admin, default: false
      t.string :password_digest
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      t.string :remember_token
      t.datetime :last_activity_at

      t.timestamps
    end
      add_index :users, :email, unique: true
      add_index :users, :remember_token
  end
end
