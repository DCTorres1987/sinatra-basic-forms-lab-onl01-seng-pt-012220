require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  get '/new' do 
    @putinay_input = PigLatinizer.new.to_pig_latin(params[:user_phrase])
  end

end
