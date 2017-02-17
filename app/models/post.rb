class Post < ApplicationRecord

  belongs_to :author, class_name: 'User'
  has_many :comments

  default_value_for(:published_at) { Date.today}

end
