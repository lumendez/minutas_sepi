class CreateCambioComisionRevisoraRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :cambio_comision_revisora_registros do |t|
      t.string :presidente
      t.string :secretario
      t.string :primer_vocal
      t.string :segundo_vocal
      t.string :tercer_vocal
      t.string :suplente
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
