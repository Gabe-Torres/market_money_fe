require 'rails_helper'

RSpec.describe 'Vendor Show Page', type: :feature do
  scenario 'Vendor and vendor data' do
    visit markets_path

    click_link("More Info", match: :first)

    click_link(match: :first)

    expect(page).to have_content("Contact Info")
    expect(page).to have_content("Name:")
    expect(page).to have_content("Credit Accepted:")
    expect(page).to have_content("Description:")
  end
end
