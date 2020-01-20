require "sinatra/base"
require './lib/peep_model'

require_relative 'db_setup'

class Chitter < Sinatra::Base

  get '/' do
    p Peep.all
    erb :index, :locals => {
        peeps: Peep.all
    }
  end

  post '/api/post_peep' do
    p params
    Peep.create(params)
    redirect '/'
  end

  run! if app_file == $0
end