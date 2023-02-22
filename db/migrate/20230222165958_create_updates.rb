class CreateUpdates < ActiveRecord::Migration[7.0]
  def change
    create_table :updates do |t|
      t.string :photo
      t.references :station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
