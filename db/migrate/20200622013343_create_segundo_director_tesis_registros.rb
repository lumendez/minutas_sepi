class CreateSegundoDirectorTesisRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :segundo_director_tesis_registros do |t|
      t.string :nombre
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
