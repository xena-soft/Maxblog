class PostSerializer < ActiveModel::Serializers

  attributes :id, :title, :body, :published_at, :author_nickname

end