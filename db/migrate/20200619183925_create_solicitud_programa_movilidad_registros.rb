class CreateSolicitudProgramaMovilidadRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitud_programa_movilidad_registros do |t|
      t.string :nombre
      t.string :nombre_institucion
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
