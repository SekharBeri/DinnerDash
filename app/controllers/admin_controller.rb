class AdminController < ApplicationController
  def login
    if request.post?
      if params[:admin][:user_name]== "admin" && params[:admin][:password]=="nimda"
        session[:admin]="admin"
        redirect_to items_path
      else
        render 'login'
      end
    end
  end
  
  def logout
    session[:admin]=nil
    redirect_to admin_login_path
  end
end
