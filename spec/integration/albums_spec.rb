require 'spec_helper'

describe 'albums' do
  it 'creating a new one' do
    visit albums_path
    click_link "New Album"
    fill_in "Name", :with => "First album!"
    click_button "Create Album"
    within ".flash.notice" do
      page.should have_content("Album has been created!")
    end
  end
end
