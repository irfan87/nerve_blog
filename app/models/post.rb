class Post < ApplicationRecord
	validates :post_title, presence: true
end
