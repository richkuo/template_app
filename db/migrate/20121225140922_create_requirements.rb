class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :description
      t.boolean :avoid
      t.string :status
      t.integer :project_id

      t.timestamps
    end
  end
end
