class User < ApplicationRecord
	has_secure_password

	mount_uploader :image, ImageUploader
	enum role: {consumer: 0, admin: 1}
end
