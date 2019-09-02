class PostSerializer < ActiveModel::Serializer
  attributes :id, :headline, :body, :author, :user_id
end
