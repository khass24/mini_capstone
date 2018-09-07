class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, length: {minimum: 1}
  validates :description, length: {maximum: 100}
  validates :description, presence: true
  validates :image_url, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier

  def is_discounted?
    price < 7000000
  end

  def tax
    price * 0.09
  end 

  def total
    tax + price
  end
end
