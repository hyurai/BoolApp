class TweetsController < ApplicationController
    def index
        @tweets = Tweet.where(authority: true)
    end
    
    def new
        @tweets = Tweet.all
    end
    
    def create
        tweet = Tweet.create(text: params[:text],authority: params[:authority])
        redirect_to '/'
    end
    
    def update
        
        tweet = Tweet.find(params[:id])
        tweet.update(text: params[:text],authority: params[:authority])
        tweet.save
        redirect_to '/'
    
    end
end
