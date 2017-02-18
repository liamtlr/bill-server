require 'sinatra/base'
require 'net/http'
require 'json'

class BillServer < Sinatra::Base

  BILL_URL = 'http://safe-plains-5453.herokuapp.com/bill.json'

  get '/' do
    @bill = get_bill
    erb :index
  end

  helpers do

    def get_bill
      url = BILL_URL
      uri = URI(url)
      response = Net::HTTP.get(uri)
      result = JSON.parse(response)
      puts result
    end

  end

  run! if app_file == $0

end
