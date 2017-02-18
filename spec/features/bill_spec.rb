require 'spec_helper'

feature 'Viewing a bill' do
  scenario 'display bill contents' do
    visit('/')
    expect(page).to have_content 'Here is your bill for February'
  end
end
