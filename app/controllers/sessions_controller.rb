class SessionsController < ApplicationController
  skip_before_action :login_required
  def new
  end

  def create 
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:email])
      session[:user_id] = user.id
      resirect_to root_url, notice: 'ログインした'
      
    else
      render :new
    end
  end

  def destrooy
    reset_session
    redirect_to root_url, notice: 'ログアウト'
  end

private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end