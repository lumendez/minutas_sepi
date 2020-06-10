class CreateTemaTesisRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :tema_tesis_registros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
