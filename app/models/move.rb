class Move < ApplicationRecord
    belongs_to :User
    has_many :boxes
end
