require 'sinatra/base'
require 'net/http'
require 'json'

class BillServer < Sinatra::Base

  get '/' do
    "Hello, world!"
  end
  
  run! if app_file == $0

end
