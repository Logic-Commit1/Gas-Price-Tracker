class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :location
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :active

      t.timestamps
    end
  end
end
