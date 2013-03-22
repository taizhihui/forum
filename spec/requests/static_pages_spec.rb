require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Forum'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Forum')
    end

    it "should have the title 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Awesome Forum | Home")
    end
  end

	describe "Help page" do
		it "should have the content 'Help'" do	
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Awesome Forum | Help")
    end
	end

	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the title 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Awesome Forum | About Us")
    end
	end

end
