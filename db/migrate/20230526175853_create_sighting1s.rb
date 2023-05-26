class CreateSighting1s < ActiveRecord::Migration[7.0]
  def change
    create_table :sighting1s do |t|
      t.integer :animal_id
      t.float :latitude
      t.float :longitude
      t.date :date

      t.timestamps
    end
  end
end
