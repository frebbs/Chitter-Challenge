require "sinatra/base"
require './lib/peep_model'
require './lib/user_model'
require_relative 'db_setup'

class Chitter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index, :locals => {
        peeps: Peep.top_ten_reversed
    }
  end

  post '/api/create_account' do
    session['username'] = params['username']
    User.create(params)
    redirect '/home'
  end

  post '/api/post_peep' do
    Peep.create(params)
    redirect '/'
  end

  get '/home' do
    erb :'home/index', :locals => {
        :user => User.find_user(session['username'].to_s).username
    }
  end

  get '/home/signup' do
    erb :'home/signup'
  end

  run! if app_file == $0
end