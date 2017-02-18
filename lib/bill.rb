class Bill

  attr_reader :bill_url

  def initialize(bill_url)
    @bill_url = bill_url

  end

  def get_bill
    uri = URI(@bill_url)
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)
  end

end
