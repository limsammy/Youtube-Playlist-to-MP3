require 'rails_helper'

describe "Visitor navigates to index" do
  context "Visitor sees correct elements" do
    scenario "Visitor sees navbar" do
      visit root_path

      expect(current_path).to eq('/home')
      expect(page).to have_content('Search for YouTube playlist:')
    end
  end
end
