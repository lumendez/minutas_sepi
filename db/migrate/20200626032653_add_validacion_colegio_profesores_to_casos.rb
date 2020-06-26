class AddValidacionColegioProfesoresToCasos < ActiveRecord::Migration[6.0]
  def change
    add_column :casos, :validacion_colegio_profesores, :boolean, default: false
  end
end
