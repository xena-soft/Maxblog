class Post < ApplicationRecord

  belongs_to :author, class: user
  has_many :comments

end
