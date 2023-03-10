class Upload < ApplicationRecord
    mount_uploader :photo, PhotoUploader


    belongs_to :user
    # belongs_to :station
end
