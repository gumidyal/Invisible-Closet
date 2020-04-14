class Item < ApplicationRecord
    belongs_to :category
    validates :name, presence: true
    validates :size, presence: true
    validates :quantity, presence: true, numericality: { less_than: 1000}
end
