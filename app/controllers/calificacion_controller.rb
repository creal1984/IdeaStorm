class CalificacionController < ApplicationController
  def index
    @titulo= "Calificacion de Proyecto"
    
  end

  def new
    if request.post?
    @calificacion=Calificarcion.new(params[:calificacion])
    p_user_id = session[:user_id]
    idu = $idproyecto
    user = User.find_by_id(p_user_id)
    @calificacion.nombreusuario= user.nombre
    @calificacion.idproyecto = idu
    if @calificacion.save
    flash[:notice]="se ha ingresado su calificacion"
    
    redirect_to :controller => "calificacion" , :action => "update"
    else
       flash[:notice]="Eror al ingresar su calificacion vuewlva a intentarlo"
    redirect_to :controller => "sitio" , :action => "index"
  end
    end
  end

  def show
  end
  def update
    nota = 0
<<<<<<< HEAD
    cont = 0
=======
>>>>>>> ede85c36334ace739e4f308640d3130f1dee9dea
    @proyecto=Proyecto.find_by_id($idproyecto)
    @calificacion=Calificarcion.all
     @calificacion.each do |c| 
       if c.idproyecto == @proyecto.id
         nota = nota + c.nota
<<<<<<< HEAD
         cont = cont + 1
         
       end  
       end
       notafinal= nota/cont
       @proyecto.calificacion=notafinal
       @proyecto.save
       flash[:notice]="se ingreso su nota correctamente"
       redirect_to home_url
     end
    

=======
         @proyecto.calificacion=nota
           
       end
     end
    redirect_to home_url
  end
>>>>>>> ede85c36334ace739e4f308640d3130f1dee9dea
end
