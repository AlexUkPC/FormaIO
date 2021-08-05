require 'rails_helper'
RSpec.describe "Access" do
	it "shows that access is denied" do
		visit '/users'
		expect(page.text).to match(/You are not authorized to access this page./)
	end
	it "shows home page",js: true do
		visit root_path
		expect(page.text).to match(/Home Page/)
	end
end