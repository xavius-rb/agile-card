require 'rails_helper'

RSpec.describe "Home", type: :system do
  it 'access home page' do
    visit "/home"
    expect(page).to have_text("Home#index")
  end
end
