describe Bill do

  let(:bill_url) { 'http://safe-plains-5453.herokuapp.com/bill.json' }
  let(:subject) { described_class.new(bill_url) }

  describe '#initialize' do
    it 'receives a URL upon intiialization' do
      expect(subject.bill_url).to eq bill_url
    end
  end
end
