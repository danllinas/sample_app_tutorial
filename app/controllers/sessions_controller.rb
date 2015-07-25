class SessionsController < ApplicationController
  def new
  end

  #this just renders the 'new' view for sessions.
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #login user and redirect to the show page.
    else
      
      render 'new'
    end
  end

  def destroy
  end

end
