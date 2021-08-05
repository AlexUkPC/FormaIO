require "rails_helper"
feature "Log in " do
  given(:user) { create(:user) }
  scenario "succesful with username" do
    visit new_user_session_path
    fill_in "Login", with: user.username
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page.text).to match(/Hello #{user.email}/)
  end
  scenario "succesful with email" do
    visit new_user_session_path
    fill_in "Login", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page.text).to match(/Hello #{user.email}/)
  end
  scenario "failed because of username" do
    visit new_user_session_path
    fill_in "Login", with: "some_random_username"
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page.text).not_to match(/Hello #{user.email}/)
  end
  scenario "failed because of email" do
    visit new_user_session_path
    fill_in "Login", with: "some_random_email@email.com"
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page.text).not_to match(/Hello #{user.email}/)
  end
  scenario "failed because of username" do
    visit new_user_session_path
    fill_in "Login", with: user.username
    fill_in "Password", with: "some_random_password"
    click_on "Log in"
    expect(page.text).not_to match(/Hello #{user.email}/)
  end
end