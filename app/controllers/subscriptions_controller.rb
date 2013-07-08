require "net/http"
require "uri"

class SubscriptionsController < ApplicationController
 
  def index
    @subscriber = Subscription.new
  end


  def subscribe
    @subscriber = Subscription.new(params[:subscription])

    if @subscriber.save
      redirect_to root_path
      flash[:notice] = 'You have succesfully entered the competition.'
      else
      render  :action => :index
    end

  end

  
end
