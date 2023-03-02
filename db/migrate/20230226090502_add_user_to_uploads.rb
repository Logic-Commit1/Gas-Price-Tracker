class AddUserToUploads < ActiveRecord::Migration[7.0]
  def change
    add_reference :uploads, :user, index: true
  end
end
