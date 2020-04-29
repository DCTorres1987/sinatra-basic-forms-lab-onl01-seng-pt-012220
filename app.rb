require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy
  end
  
  get '/create' do 
        @name =  params["name"]
    @coach = params["coach"]
    @pg =    params["pg"]
    @sg =    params["sg"]
    @pf =    params["pf"]
    @sf =    params["sf"]
    @c =     params["c"]
  end
  
  post '/puppy' do 
    erb :display_puppy
  end

end
