class SitioController < ApplicationController
  def perfil_usuario
    @titulo = "Perfil usuario" 
    p_user=session[:user_id]
    @user = User.find_by_id(p_user)
    
      
   
  end

  def index
    @titulo = "Principal"
    @proyecto1 = Proyecto.all
    @proyecto=@proyecto1.sort_by(&:created_at).reverse
    @proyecto2=@proyecto1.sort_by(&:calificacion).reverse
  end

  def publicacion_proyecto
  end

  def ficha_proyecto
    @titulo ="Ficha de Proyectos"
 
  end

  def calificacion_proyecto
    @titulo ="Calificacion Proyecto"
    @proyecto = Proyecto.all
  end
  def show
    @proyecto = Proyecto.find(params[:id])
  end
end
