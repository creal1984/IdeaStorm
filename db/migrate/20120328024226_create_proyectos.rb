class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :titulo
      t.integer :nivelinversion
      t.text :ventajascomparativas
      t.integer :calificacion
      t.text :resumen
      t.integer :ranking
      t.integer :idusuario

      t.timestamps
    end
  end
end
