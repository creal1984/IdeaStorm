class RegistroUserController < ApplicationController
  def index
     @titulo = "Registro Nuevo Usuario"
    if request.post?
      @user= User.new(params[:user])
     if @user.save
       flash[:notice] = "El Usuario #{@user.nombre} se ha ingresado correctamente"
       redirect_to :controller => "sitio" , :action => "index"
     end
    end
  end
  def login
     @titulo = "Ingreso Usuario"
     if request.post?
       p_user = User.new(params[:user])
       user = User.find_by_email_and_password(p_user.email, p_user.password) 
      
      if user
         session[:user_id] = user.id
         flash[:notice] = "Hola #{user.nombre}  Bienvenido a tu Cuenta"
         redirect_to home_url
       else
         flash[:notice] = "Email/Password incorrecto"
         redirect_to login_url
       end
     end
  end
  def logout
    session[:user_id] = nil
    flash[:notice] = "Adios amigo"
    redirect_to home_url
  end
end
