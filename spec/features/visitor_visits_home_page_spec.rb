require 'rails_helper'

describe "Visitor navigates to index" do
  context "Visitor sees correct elements" do
    scenario "Visitor sees root index" do
      visit root_path

      expect(current_path).to eq(root_path)
      expect(page).to have_content('Search for YouTube Playlist:')
    end

    scenario "Visitor inputs a playlist and presses enter" do
      visit root_path

      expect(page).to have_content('Search for YouTube Playlist:')
      within(:css, ".playlist_ID") do
        fill_in 'form-control', with: 'PLJKDxKDJBeYnen4wYXDY8jhlcZsDAsaT6'
      end
    end
  end
end
