class AddAddressToStations < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :address, :string
  end
end