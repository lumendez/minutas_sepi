class CreateRevocacionBajaRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :revocacion_baja_registros do |t|
      t.text :motivacion
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
