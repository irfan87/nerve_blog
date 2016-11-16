class Post < ApplicationRecord
	validates_presence_of :post_title, :post_body
end
