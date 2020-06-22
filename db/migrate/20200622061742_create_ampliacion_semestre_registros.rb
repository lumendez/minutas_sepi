class CreateAmpliacionSemestreRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :ampliacion_semestre_registros do |t|
      t.text :motivacion
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
