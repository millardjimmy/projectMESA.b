class MoveSerializer < ActiveModel::Serializer
    attributes :id, :name, :date, :user_id, :icon
    belongs_to :user
    has_many :boxes
  end