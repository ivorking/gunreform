class Group < ApplicationRecord
    has_and_belongs_to_many :pols
end
