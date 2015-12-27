class User < ActiveRecord::Base
  
  #attr_accessible :picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :tickets
   has_many :votes
   mount_uploader :picture, ImageUploader
end
