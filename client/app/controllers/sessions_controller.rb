class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Authenticated as #{user.email}"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'See you soon!'
  end
end
