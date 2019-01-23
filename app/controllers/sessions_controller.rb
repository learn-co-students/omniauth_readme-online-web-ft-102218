class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_by(client_id: auth['client_id']) do |u|
      u.name = auth[:info][:nickname]
      u.email = auth[:info][:email]
      u.client_id = auth[:uid]
    end
 
    session[:user_id] = @user.id
 
    render 'welcome/home'
  end

  private
 
  def auth
    request.env['omniauth.auth']
  end
end
