class CreateCambioMaestriaDoctoradoRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :cambio_maestria_doctorado_registros do |t|
      t.text :motivacion
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
