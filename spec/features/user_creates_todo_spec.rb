require "rails_helper"

feature "User create todos" do
	scenario "successfully" do 
		visit root_path

		click_on "Add a new todo"
		fill_in "title", with:"Buy milk"
		click_on "Submit"

		expect(page).to have_css ".todos li", text: "Buy milk"
	end
end