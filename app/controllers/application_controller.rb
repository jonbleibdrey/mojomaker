require './config/environment'

class ApplicationController < Sinatra::Base

  configure do   
    enable :sessions
  end

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

   get "/" do
     redirect to "/user"
   end

end
