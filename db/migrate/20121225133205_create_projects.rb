class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :additional
      t.string :purpose
      t.decimal :amount
      t.datetime :deadline
      t.integer :user_id

      t.timestamps
    end
  end
end
