class CreateProgramaPosgradoRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :programa_posgrado_registros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
