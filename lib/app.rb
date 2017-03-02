require 'sinatra/base'
require 'net/http'
require 'json'
require_relative 'caller'
require_relative 'bill'


class BillServer < Sinatra::Base

  BILL_URL = 'http://safe-plains-5453.herokuapp.com/bill.json'

  get '/' do
    caller = Caller.new(BILL_URL)
    bill_contents = caller.get_bill
    @bill = Bill.new(bill_contents)
    erb :index
  end

  run! if app_file == $0

end
