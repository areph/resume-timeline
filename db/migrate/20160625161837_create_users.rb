class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :skill
      t.text :pr

      t.timestamps null: false
    end
  end
end
