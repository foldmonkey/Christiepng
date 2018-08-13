require "rails_helper"

feature "Create Product", type: :feature do

	before(:each) do
		@user = User.create!(first_name: "Panda", last_name: "Hacker", email: "panda@hacker.com", password: "password", country: "Malaysia", role: 1)
		visit "/login"
		fill_in "email", with: "panda@hacker.com"
		fill_in "password", with: "password"
		click_on "Submit"
	end

	it "should be able to create new product" do
		visit "/products/create"
		fill_in "product[description]", with: "description"
		fill_in "product[category]", with: "category"
		fill_in "product[color]", with: "color"
		fill_in "product[price]", with: "price"
		click_on "Save Product"
		expect(page).to have_content "Search"
	end
end	

