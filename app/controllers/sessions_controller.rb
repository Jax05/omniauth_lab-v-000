class SessionsController < ApplicationController

  def create
    if @user = User.find_or_create_by(uid: auth['uid'])
      session[:user_id] = @user.id
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
