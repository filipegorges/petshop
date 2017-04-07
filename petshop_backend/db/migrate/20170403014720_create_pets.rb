class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :castrated
      t.date :birth_date
      t.string :owner_name
      t.string :owner_phone_number
      t.date :last_visited
      t.text :image_url

      t.timestamps
    end
  end
end
