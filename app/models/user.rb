class User < ActiveRecord::Base
  has_many :donations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing/:style.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.facebook_image_url = auth.info.image # assuming the user model has an image
    end
  end

  def image_url
    if self.facebook_image_url
      return self.facebook_image_url
    else
      return self.image.url(:thumb)
    end
    # if fb image
    # else use image url (which will default to avatar)
  end

end
