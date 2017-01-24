require 'rails_helper'

RSpec.feature "Logged in User" do
  scenario "can create a new exercise" do
    user = create(:user, name: "Lucy")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return( user )

    visit dashboard_path
    expect(page).to have_content('Welcome Lucy!')

    within ".dashboard-options" do
      expect(page).to have_button('All Exercises')
      click_on 'All Exercises'
    end
    # expect(page).to have_link('All Workouts')
  end
end
