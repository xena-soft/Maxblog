class Post < ApplicationRecord

  belongs_to :author, class_name: 'User'
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true

  default_value_for(:published_at) { Date.today}

  def author_nickname
    author.nickname
  end
  
end
