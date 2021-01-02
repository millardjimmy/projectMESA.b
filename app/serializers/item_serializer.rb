class ItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :user_id, :box_id
    belongs_to :box
  end