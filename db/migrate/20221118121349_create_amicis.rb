class CreateAmicis < ActiveRecord::Migration[7.0]
  def change
    create_table :amicis do |t|
      t.string :name
      t.date :date_of_birth
      t.string :adress
      t.string :email
      t.integer :years
      t.string :phone

      t.timestamps
    end
  end
end
