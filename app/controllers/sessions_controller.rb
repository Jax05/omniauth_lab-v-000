class SessionsController < ApplicationController

  def create
    if @user = User.find_or_create_by(id: auth['uid'])
      session[:user_id] = @user.id
    end
  end

end
