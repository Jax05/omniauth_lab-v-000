class SessionsController < ApplicationController

  def create
    raise params.inspect
    if user = User.find_by_id(auth[:uid])
      session[:user_id] = user.id
    end
  end

end
