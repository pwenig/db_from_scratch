require 'spec_helper'
require_relative '../tasker_app'
Capybara.app = TaskerApp

feature "Tasker" do
  before do
    DB[:tasks].delete
  end
  scenario "user can add and see tasks" do
    visit('/')
    fill_in "task", with: "wash dishes"
    click_on "Enter"
    expect(page).to have_content("wash dishes")
  end
end

