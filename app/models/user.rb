class User < ApplicationRecord
  has_many :user_activities
  has_many :activities, through: :user_activities
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence:true
  validates :nickname, presence: true
  validates :image_url, presence: true
  validates :description1, presence: true
  validates :description2, presence: true
  validates :description3, presence: true
  validates :goal, presence: true
   has_secure_password
end




#
# <%= text_field :person, :email %>
# <%= text_field :person, :email_confirmation %>
