require 'sinatra/base'
require 'net/http'
require 'json'

class BillServer < Sinatra::Base

  get '/' do
    erb :index
  end

  run! if app_file == $0

end
