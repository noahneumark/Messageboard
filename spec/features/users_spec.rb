require 'rails_helper'

RSpec.feature "Users", type: :feature do

  context "create new user" do
    scenario "should be successful" do
      visit('/users/sign_up')
      within("#registrationForm") do
        fill_in 'user_first', with: "TestFirst"
        fill_in 'user_last', with: "TestLast"
        fill_in 'user_email', with: "test@test.com"
        fill_in 'user_password', with: "abc123!@"
        fill_in 'user_password_confirmation', with: "abc123!@"
      end
      click_button "Sign up"
      expect(page).to have_current_path(root_path)
    end
    # scenario "should fail" do
    #
    # end
  end

end
