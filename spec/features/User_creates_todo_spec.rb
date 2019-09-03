require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Create Todo"

    fill_in "Title", with: "Clean House"

    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Clean House"
  end
end
