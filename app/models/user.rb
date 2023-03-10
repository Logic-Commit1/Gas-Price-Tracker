class User < ApplicationRecord
  validates :mobile_number, presence: true, length: {minimum:3, maximum:3}
  validates :password, presence: true, length: {minimum: 5}
  has_many :uploads
  geocoded_by :address
  after_validation :geocode

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :authentication_keys => [:mobile_number]

  def email_required?
    false
  end
  
  def will_save_change_to_email?
    false
  end

  def role
    case
    when admin
      "Administrator"
    else
      "Uploader"
    end
  end
end
