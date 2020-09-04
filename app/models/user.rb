class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :validatable

  # validates :username, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates_format_of :password, :with => /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,100}+\z/, :message => "は8文字以上の英大文字，英小文字，数字混在で入力してください。"
  mount_uploader :image_name, ImageUploader
end
