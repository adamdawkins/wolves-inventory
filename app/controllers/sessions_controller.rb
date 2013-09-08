class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username].nil?
      flash.now[:error] = "We couldn't find a user with that username."    
      render action: 'new'
    else
      redirect_to root_path
    end
  end
end
