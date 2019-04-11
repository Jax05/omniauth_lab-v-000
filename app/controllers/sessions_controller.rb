class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |user|
      session[:user_id] = @user.id
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
