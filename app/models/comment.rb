class Comment < ApplicationRecord

  belongs_to :author, class_name: 'user'
  belongs_to :post

end
