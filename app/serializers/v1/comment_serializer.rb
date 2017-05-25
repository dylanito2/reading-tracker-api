class V1::CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :created_at  
end
