class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, success: 'ログインに成功しました'
    else
       flash.now[:danger] = 'ログインに失敗しました'
       render :new
    end
  end
  
  def destroy
    log_out
    redirect_to root_url, info: 'ログアウトしました'
  end
  
  private
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
