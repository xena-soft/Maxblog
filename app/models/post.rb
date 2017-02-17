class Post < ApplicationRecord

  belongs_to :author, class_name: 'user'
  has_many :comments

end
