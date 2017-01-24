require 'rails_helper'

RSpec.feature "User visits the home screen" do
  scenario "User sees info on root page" do

    visit root_path

    expect(page).to have_link("Sign in with Google")

    expect(page).to have_content("Welcome to the BBG Tracker!")

    expect(page).to have_content("Login to see your dashboard and enter a new workout")
  end

end
