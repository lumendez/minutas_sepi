class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :curp
      t.references :tipo_usuario, null: false, foreign_key: true
      t.references :alumno, null: false, foreign_key: true

      t.timestamps
    end
  end
end
