class SessionsController < ApplicationController
  def new
  end

  def create
    user_params = params.require(:session)

    user = User.find_by(nickname: user_params[:nickname])&.authenticate(user_params[:password])

    if user.present?
      session[:user_id] = user.id

      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user_id)

    redirect_to root_path
  end
end
