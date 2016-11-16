require 'rails_helper'

RSpec.describe "Post", type: :feature do
	scenario "create a new post" do
		visit "posts/new"

		fill_in "Post title", with: "Title"
		fill_in "Post body", with: "Body"

		click_button "Create Post"

		expect(page).to have_text("Title")
	end
end