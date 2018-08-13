class Product < ApplicationRecord
	mount_uploaders :image, ImageUploader

	validates :description, presence: true
	validates :color, presence: true
	validates :price, presence: true
	validates :category, presence: true

	belongs_to :user

	scope :category, -> (category) { where category: category }
  	scope :color, -> (color) { where color: color }
  	scope :price_range, -> (from,to) {where ("price >= ? AND price <= ?"), from, to}

end
