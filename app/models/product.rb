class Product < ApplicationRecord
	mount_uploaders :image, ImageUploader

	scope :category, -> (category) { where category: category }
  	scope :color, -> (color) { where color: color }
  	scope :price_range, -> (from,to) {where ("price >= ? AND price <= ?"), from, to}

end
