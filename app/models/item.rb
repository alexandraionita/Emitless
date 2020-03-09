class Item < ApplicationRecord
  has_many :wish_list_items, dependent: :destroy
  has_many :basket_items
  has_many :baskets, through: :basket_items

  RETAILERS = %w[Tesco Ocado Morrisons]

  validates :name, uniqueness: true, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :generic_name, presence: true
  validates :retailer, inclusion: { in: RETAILERS }
  validates :price, presence: true
end
