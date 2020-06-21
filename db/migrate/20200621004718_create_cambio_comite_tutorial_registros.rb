class CreateCambioComiteTutorialRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :cambio_comite_tutorial_registros do |t|
      t.string :primer_tutor
      t.string :segundo_tutor
      t.string :tercer_tutor
      t.string :cuarto_tutor
      t.string :quinto_tutor
      t.references :caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
