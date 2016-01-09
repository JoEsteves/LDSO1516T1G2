class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :tickets
   has_many :votes
   mount_uploader :picture, ImageUploader
end
