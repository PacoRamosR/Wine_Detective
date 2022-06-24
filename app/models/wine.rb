class Wine < ApplicationRecord
    has_many :microposts, dependent: :destroy
    has_one_attached :profile_picture
    has_one_attached :cover_picture
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
    validates :wine_type, presence: true
    paginates_per 8
end
