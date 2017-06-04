class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.references :breed, foreign_key: true
      t.string :gender
      t.boolean :castred
      t.date :birthday
      t.string :name
      t.string :owner_name
      t.string :owner_phone
      t.date :date_last_visit

      t.timestamps
    end
  end
end
