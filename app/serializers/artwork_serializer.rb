class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :artwork_HTML, :public
end
