class Donation < ApplicationRecord
    validates :items, presence: true, length: { maximum: 500}
    validates :name, length: {maximum: 30}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, length: { maximum: 255 },
                format: { with: VALID_EMAIL_REGEX }
end
