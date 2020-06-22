class AddNombreSegundoDirectorToDirectorTesisRegistros < ActiveRecord::Migration[6.0]
  def change
    add_column :director_tesis_registros, :nombre_segundo_director, :string
  end
end
