class Wine < ApplicationRecord
    validates :name, presence: true
    validates :country, presence: true
    validates :price, presence: true
    validates :grape_variety, presence: true
    validates :explanation, presence: true
    validates :pairing, presence: true
    validates :smooth_tannic, presence: true
    validates :dry_sweet, presence: true
    validates :soft_acidic, presence: true
    validates :light_bold, presence: true
end
