class ProyectoController < ApplicationController
  def index
     @titulo = "Tus Proyectos"
     @proyecto=Proyecto.all
  

   
   
 
  end
  def new
    @titulo = "Ingreso de Nuevo Proyecto"
     if request.post?
      @proyecto= Proyecto.new(params[:proyecto])
      @proyecto.idusuario= session[:user_id]
    
      if @proyecto.save
        
     flash[:notice] = "El proyecto #{@proyecto.titulo} se ha ingresado correctamente"
       redirect_to :controller => "sitio" , :action => "index"
       
    
     end
      end  
    end


  def edit
    @titulo= "Ficha de Proyectos"
    @proyecto = Proyecto.all
    respond_to do |format|
      format.html
      format.xml
    end
  end
 def show
   @titulo= "Detalles de Proyecto"
    @proyecto = Proyecto.find(params[:id])
  end
  def destroy
    @proyecto = Proyecto.find(params[:id])
    @proyecto.destroy
    redirect_to home_url
    
  end
end
