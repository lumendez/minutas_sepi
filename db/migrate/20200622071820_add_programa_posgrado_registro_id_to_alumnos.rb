class AddProgramaPosgradoRegistroIdToAlumnos < ActiveRecord::Migration[6.0]
  def change
    add_reference :alumnos, :programa_posgrado_registro, null: false, foreign_key: true
  end
end
