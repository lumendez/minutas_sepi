class CreateSolicitudAbiertaRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitud_abierta_registros do |t|
      t.string :asunto
      t.text :motivacion
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
