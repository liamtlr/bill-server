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
      uri = URI('http://safe-plains-5453.herokuapp.com/bill.json')
      response = Net::HTTP.get(uri)
      result = JSON.parse(response)
      expect(subject.get_bill).to eq result
    end
  end

  # describe '#bill_details' do
  #   'it returns general information about the bill' do
  #
  #   end
  #
  # end
end
