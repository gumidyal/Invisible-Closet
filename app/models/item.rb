class Item < ApplicationRecord
    belongs_to :category
    validates :name, presence: true
    validates :size, presence: true
    validates :quantity, presence: true, numericality: {greater_than_or_equal_to: 0, less_than: 1000}
end
