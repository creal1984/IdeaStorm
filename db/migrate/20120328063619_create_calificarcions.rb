class CreateCalificarcions < ActiveRecord::Migration
  def change
    create_table :calificarcions do |t|
      t.integer :idproyecto
      t.string :nombreusuario
      t.string :comentario

      t.timestamps
    end
  end
end
