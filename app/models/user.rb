class User < ApplicationRecord
  validates :mobile_number, presence: true, length: {minimum:3, maximum:3}
  validates :password, presence: true, length: {minimum: 5}



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :authentication_keys => [:mobile_number]

  def email_required?
    false
  end
  # use this instead of email_changed? for Rails = 5.1.x
  def will_save_change_to_email?
    false
  end
end
