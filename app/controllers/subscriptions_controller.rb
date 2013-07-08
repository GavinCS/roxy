require "net/http"
require "uri"

class SubscriptionsController < ApplicationController
 
  def index
    @subscriber = ClearancePage.new
  end


  def subscribe
    @subscriber = ClearancePage.new(params[:clearance_page])

    if @subscriber.save
      redirect_to root_path
      flash[:notice] = 'You have succesfully entered the competition.'
      else
      render  :action => :index
    end

  end

  
end
