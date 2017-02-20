class Post < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :author, class_name: 'User'
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true

  default_value_for(:published_at) { Date.today}

  attr_accessor :id, :title, :body, :published_at, :author_nickname

  def author_nickname
    author.nickname
  end

  def attributes
    { id: nil, title: nil, body: nil, published_at: nil, author_nickname: nil }
  end

end
