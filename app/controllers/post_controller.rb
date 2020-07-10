class PostController < ApplicationController
    
    get '/post/index' do 
        @posts = Post.all
        erb :"/post/index"
    end

    get '/post/new' do
    erb :"/post/new"
    end

    post '/post/new' do
       @post = Post.create(params)
       @user = User.all
    #    @post.created_at = DateTime.now
    binding.pry
       @post.user_id = session[:user_id]
    
       @post.save
       redirect to 'post/index'
    end

end