require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :homepage
  end
  
  get 'signup' do
    erb :signup
  end
  
  post '/signup' do
    erb :signup
    if params[:username] == settings.username && params[:password] == session[:admin] = true 
      redirect_to ()
  end
    


end
