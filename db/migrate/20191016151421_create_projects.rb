class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :goal
      t.integer :creator_id

      t.timestamps
    end
  end
end
