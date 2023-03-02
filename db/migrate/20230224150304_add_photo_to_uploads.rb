class AddPhotoToUploads < ActiveRecord::Migration[7.0]
  def change
    add_column :uploads, :photo, :string
  end
end
