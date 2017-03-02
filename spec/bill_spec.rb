describe Bill do


  uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
  response = Net::HTTP.get(uri)
  result = JSON.parse(response)
  let(:subject) { described_class.new(result) }

  describe '#initialize' do
    it 'stores the billing date' do
      expect(subject.generated).to eq "2015-01-11"
    end
    it 'stores the due date' do
      expect(subject.due_date).to eq "2015-01-25"
    end
    it 'stores the billing period' do
      expect(subject.billing_period["from"]).to eq "2015-01-26"
    end
    it 'stores the total bill value' do
      expect(subject.total).to eq "136.03"
    end
    it 'stores TV subscription details' do
      expect(subject.subscriptions[0]["name"]).to eq "Variety with Movies HD"
    end
    it 'stores phone subscription details' do
      expect(subject.subscriptions[1]["name"]).to eq "Sky Talk Anytime"
    end
    it 'stores internet subscription details' do
      expect(subject.subscriptions[2]["name"]).to eq "Fibre Unlimited"
    end
    it 'stores subscription total details' do
      expect(subject.subscription_total).to eq "71.40"
    end
    it 'stores call charge details' do
      expect(subject.call_charges[0]["called"]).to eq "07716393769"
    end
    it 'stores call charge total' do
      expect(subject.call_charges_total).to eq 59.64
    end
    it 'stores rental details' do
      expect(subject.rentals[0]["title"]).to eq "50 Shades of Grey"
    end
    it 'stores buy and keep details' do
      expect(subject.buy_and_keep[0]["title"]).to eq "That's what she said"
    end
    it 'stores SkyStore total' do
      expect(subject.sky_store_total).to eq 24.97
    end
  end

  context 'bill without certain elements'

end
