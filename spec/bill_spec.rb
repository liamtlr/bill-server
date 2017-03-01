describe Bill do


  uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
  response = Net::HTTP.get(uri)
  result = JSON.parse(response)
  let(:subject) { described_class.new(result) }


  describe '#initialize' do
    it 'displays the billing date' do
      expect(subject.generated).to eq "2015-01-11"
    end
    it 'displays the due date' do
      expect(subject.due_date).to eq "2015-01-25"
    end
    it 'displays the billing period' do
      expect(subject.billing_period["from"]).to eq "2015-01-26"
    end
    it 'displays the total bill value' do
      expect(subject.total).to eq 136.03
    end
    it 'displays TV subscription details' do
      expect(subject.tv_subscription["name"]).to eq "Variety with Movies HD"
    end
    it 'displays phone subscription details' do
      expect(subject.phone_subscription["name"]).to eq "Sky Talk Anytime"
    end
    it 'displays internet subscription details' do
      expect(subject.internet_subscription["name"]).to eq "Fibre Unlimited"
    end
    it 'displays subscription total details' do
      expect(subject.subscription_total).to eq 71.4
    end
    it 'displays call charge details' do
      expect(subject.call_charges[0]["called"]).to eq "07716393769"
    end
    it 'displays call charge total' do
      expect(subject.call_charges_total).to eq 59.64
    end
    it 'displays rental details' do
      expect(subject.rentals[0]["title"]).to eq "50 Shades of Grey"
    end
    it 'displays buy and keep details' do
      expect(subject.buy_and_keep[0]["title"]).to eq "That's what she said"
    end
    it 'displays SkyStore total' do
      expect(subject.sky_store_total).to eq 24.97
    end
  end

end
