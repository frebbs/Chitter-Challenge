require "sinatra/base"

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/api/post_peep' do

  end
  run! if app_file == $0
end