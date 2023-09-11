require 'rails_helper'

RSpec.describe 'Markets Index Page' do
  scenario 'I see a list of markets and a button for more info' do 
    visit markets_path

    expect(page).to have_content("Markets")
    expect(page).to have_content("Name")
    expect(page).to have_content("City")
    expect(page).to have_content("State")
    expect(page).to have_link("More Info")
  end
end