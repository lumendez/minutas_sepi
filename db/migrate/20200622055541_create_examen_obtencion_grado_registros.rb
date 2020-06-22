class CreateExamenObtencionGradoRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :examen_obtencion_grado_registros do |t|
      t.text :motivacion
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
