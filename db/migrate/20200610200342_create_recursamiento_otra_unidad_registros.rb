class CreateRecursamientoOtraUnidadRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :recursamiento_otra_unidad_registros do |t|
      t.string :nombre
      t.string :clave
      t.string :creditos
      t.string :nombre_unidad_academica
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
