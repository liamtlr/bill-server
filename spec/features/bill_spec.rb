require 'spec_helper'

feature 'Viewing a bill' do
  it 'displays an introductory phrase to the bill' do
    visit('/')
    expect(page).to have_content 'Here is your bill for February:'
  end
  it 'displays the result of an API call containing the bill details' do
    uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
    response = Net::HTTP.get(uri)
    visit('/')
    expect(page).to have_content response
  end


end
