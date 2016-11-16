class PostsController < ApplicationController
	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		respond_to do |format|
			if @post.save
				format.html { redirect_to posts_path }
				format.json { render :show, status: :created, location: posts_path }
			else
				format.html { render :new }
				format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	private

	def post_params
		params.require(:post).permit(:post_title, :post_body) if params[:post]
	end
end
