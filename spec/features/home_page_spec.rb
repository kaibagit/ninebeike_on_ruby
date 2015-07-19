require "spec_helper.rb"

describe "HomePage" do
	it "should have content 'Welcome'" do
		visit "/"
		expect(page).to have_content 'Welcome'
	end
end