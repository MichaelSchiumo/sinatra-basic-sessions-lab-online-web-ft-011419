require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "schiumo"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = param[:item]
    @session = session
    erb :checkout
  end

end
