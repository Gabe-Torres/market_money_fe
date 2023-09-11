require 'rails_helper'

RSpec.describe 'Markets Show Page', type: :feature do
  scenario 'A market and its attributes' do
    visit markets_path

    click_link("More Info", match: :first)

    expect(page).to have_content("Vendors At Our Market")
  end
end