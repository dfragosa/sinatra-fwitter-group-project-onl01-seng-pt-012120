require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
   configure do 
     enable :sessions
     set  :username, 'flat'
     set  :password, 'iron'
   end
  
   
  get '/set/:name' do
    session[:name] = params[:name]
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
      redirect to ('/new')
  end
    


end
