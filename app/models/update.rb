class Update < ApplicationRecord
  ## Carrierwave Uploader
  mount_uploader :photo, PhotoUploader

  ## Associations
  belongs_to :station
end
