class CreateCursarUnidadAprendizajeExternaRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :cursar_unidad_aprendizaje_externa_registros do |t|
      t.string :nombre
      t.string :clave
      t.string :creditos
      t.string :unidad_academica
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
