class Pol < ApplicationRecord
    has_and_belongs_to_many :groups
    has_and_belongs_to_many :users
    belongs_to :state, :optional => true
end

