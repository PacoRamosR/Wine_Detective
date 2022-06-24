class User < ApplicationRecord
    has_many :microposts, dependent: :destroy
    has_many :bookmarks, dependent: :destroy
    has_many :bookmark_wines, through: :bookmarks, source: :wine

    before_save { self.email = email.downcase }
    validates :name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    has_one_attached :profile_picture
    has_one_attached :cover_picture

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def bookmark(wine)
    bookmark_wines << wine
  end

  def unbookmark(wine)
    bookmark_wines.destroy(wine)
  end

  def bookmark?(wine)
    bookmark_wines.include?(wine)
  end
end
