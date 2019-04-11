class SessionsController < ApplicationController

  def create
    if user = User.find_by_id(auth[:uid])
      session[:user_id] = user.id
    end
  end

end
