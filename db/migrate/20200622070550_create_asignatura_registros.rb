class CreateAsignaturaRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :asignatura_registros do |t|
      t.string :nombre
      t.string :clave
      t.string :creditos
      t.references :programa_posgrado_registro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
