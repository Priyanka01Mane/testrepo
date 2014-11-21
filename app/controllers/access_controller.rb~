class AccessController < ApplicationController


  #before_action :confirmed_loggin,:except => [:login ,:attempt_login ,:logout]
  def index
  #displaying
  end

  def login
  #login form
  end

  
  def attempt_login
   if params[:first_name].present? && params[:password].present?
	found_user = User.where(:first_name => params[:first_name]).first
	if found_user
		authorise_user = found_user.authenticate(params[:password])
	end
   end

   if authorise_user
	session[:userid] = authorise_user.id
	session[:username] = authorise_user.first_name
	flash[:notice] = "login successfully"
	redirect_to(:action => 'index')
   else
	flash[:notice] = "Your name and passwords are wrong"
	redirect_to(:action => 'login')
   end
   
  end

 


 def logout
	session[:userid] = nil
	session[:username] = nil
	redirect_to(:action => 'login')

  end


  private
  def confirmed_loggin
    unless session[:userid]
    flash[:notice] = "please login "
    redirect_to(:action => 'login')
    return false
  else
    return true
  end
  end
end
