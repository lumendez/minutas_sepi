class CreateAgregarAsignaturaRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :agregar_asignatura_registros do |t|
      t.references :asignatura_registro, null: false, foreign_key: true
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
