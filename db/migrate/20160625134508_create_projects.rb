class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :overview
      t.date :from
      t.date :to
      t.string :scale
      t.string :phase
      t.string :architect
      t.string :role
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
