class Product < ApplicationRecord
  has_many :order_items
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0}
  validates :image, presence: true
end
