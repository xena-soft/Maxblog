class User < ApplicationRecord

  has_many :posts
  has_many :comments

  validates :nickname, presence: true
  validates :email,    presence: true
  validates :password, presence: true

end
