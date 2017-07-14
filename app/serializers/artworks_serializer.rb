class ArtworksSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :image, :public, :created_at
end
