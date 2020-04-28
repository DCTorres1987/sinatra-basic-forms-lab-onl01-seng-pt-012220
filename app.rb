require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  get '/new' do 
    @new = PigLatinizer.new.to_pig_latin(params[:user_phrase])
  end
  
  post '/puppy' do 
    erb :display_puppy
  end

end
