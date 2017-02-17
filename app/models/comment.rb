class Comment < ApplicationRecord

  belongs_to :author, class: user
  belongs_to :post

end
