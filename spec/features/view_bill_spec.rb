require 'spec_helper'


feature 'Viewing a bill' do
  before do
    visit('/')
  end
  it 'displays the total amount charged' do
    expect(page).to have_content 'Amount due: £136.03'
  end
  it 'displays details of the billing period' do
    expect(page).to have_content 'Generated on:	2015-01-11'
  end
  it 'displays details of subscriptions' do
    expect(page).to have_content 'Tv	Variety with Movies HD	£50.00'
    expect(page).to have_content 'Talk	Sky Talk Anytime	£5.00'
    expect(page).to have_content 'Broadband	Fibre Unlimited	£16.40'
  end
  it 'displays details of number of calls made' do
    expect(page).to have_content '28 calls made'
  end
  it 'displays details of rentals' do
    expect(page).to have_content '50 Shades of Grey	£4.99'
  end
  it 'displays details of "Buy and Keep" purchases made' do
    expect(page).to have_content 'That\'s what she said	£9.99'
  end
end

feature 'viewing and hiding itemised call details' do
  before do
    visit('/')
  end
  it 'does not display itemised list of calls' do
    expect(page).to have_selector('#call-charge-details', visible: false)
    expect(page).to have_selector('#show-more', visible: true)
    expect(page).to have_selector('#show-less', visible: false)
  end
  it 'displays itemised list of calls once button has been clicked' do
    click_link 'Show more'
    expect(page).to have_selector('#show-more', visible: false)
    expect(page).to have_selector('#show-less', visible: true)
    expect(page).to have_content '07716393769	00:23:03	£2.13'
    expect(page).to have_selector('#call-charge-details', visible: true)
  end
  it 'obscures itemised list of calls when button is clicked again' do
    click_link 'Show less'
    expect(page).to have_selector('#show-more', visible: true)
    expect(page).to have_selector('#show-less', visible: false)
    expect(page).to have_selector('#call-charge-details', visible: true)
  end



end
