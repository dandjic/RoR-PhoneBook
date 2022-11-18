class CreateEnemies < ActiveRecord::Migration[7.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.date :date_of_enemy
      t.string :email
      t.integer :years
      t.string :phone

      t.timestamps
    end
  end
end
