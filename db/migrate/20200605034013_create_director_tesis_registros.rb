class CreateDirectorTesisRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :director_tesis_registros do |t|
      t.string :nombre
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
