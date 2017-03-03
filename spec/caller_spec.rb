describe Caller do

  let(:bill_url) { 'http://safe-plains-5453.herokuapp.com/bill.json' }
  let(:subject) { described_class.new(bill_url) }

  describe '#initialize' do
    it 'receives a URL upon intialization' do
      expect(subject.bill_url).to eq bill_url
    end
  end

  describe '#get_bill' do
    it 'makes an API call to the URL to get the bill contents' do
      allow(JSON).to receive(:parse).and_return(dummy_bill)
      expect(subject.get_bill).to eq dummy_bill
    end
  end
end
