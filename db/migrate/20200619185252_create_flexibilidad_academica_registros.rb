class CreateFlexibilidadAcademicaRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :flexibilidad_academica_registros do |t|
      t.string :nombre
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
