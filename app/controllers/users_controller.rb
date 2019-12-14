class UsersController < ApplicationController



  def home
  end

  def login
  end

  def check
    @current_user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
    if @current_user
      flash[:info] = "Bienvenue #{@current_user.name}"
      session[:user_id] = @current_user.id
      redirect_to "/users/home"
    else
      flash[:info] = "Echec de la connexion"
      session[:user_id] = nil
      redirect_to "/users/login"
    end
  end

  def logout
    if session[:user_id]
      session[:user_id] = nil
    end
    redirect_to "/users/home"
  end

end
