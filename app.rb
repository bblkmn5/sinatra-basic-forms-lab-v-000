require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    Puppy.new(params[:puppy])
    erb :create_puppy
  end

  get '/create_puppy' do
    erb :create_puppy
  end
end
