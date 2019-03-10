class Post < ApplicationRecord
	has_many :comments
	has_many :images
	belongs_to :user
end
