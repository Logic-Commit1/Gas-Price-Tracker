class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :uploads do |t|
      t.string :current_location
      t.string :petroleum_company_name
      t.integer :station_id
      t.string :fuel_type

      t.timestamps
    end
  end
end
