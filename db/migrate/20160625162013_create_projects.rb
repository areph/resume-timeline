class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :overview
      t.date :from
      t.date :to
      t.string :scale
      t.string :phase
      t.text :architect
      t.string :role
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
