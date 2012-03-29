class User < ActiveRecord::Base
  validates_presence_of :nombre, :email , :apellido, :rut, :password,
  :message => "Campo en Blanco"

  validates_length_of :nombre , :within =>1..20, 
 :message => "20 caracteres como maximo"

  validates_length_of :password, :within =>6..25,
 :message => "minimo 6, maximo 25 caracteres"
  validates_uniqueness_of :nombre, :email, :rut
  
  validates_format_of :email, :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i,
  :message => "No valido"
end
