class CreateCambioDirectorTesisRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :cambio_director_tesis_registros do |t|
      t.string :nombre
      t.string :nombre_segundo_director
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
