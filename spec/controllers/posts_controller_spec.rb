require 'rails_helper'

RSpec.describe PostsController, type: :controller do
	describe "POST #create" do
		context "with valid attributes" do
			it "create new post" do
				post :create, method: :post, params: {post_title: 'test title', post_body: 'test body'}
				expect(Post.count).to eq(1)
			end
		end

		context "with invalid attributes" do
			it "does not create a new post" do
				post :create, post: attributes_for(:invalid_post)
				expect(Post.count).to eq(0)
			end
		end
	end
end
