class AddCasoIdToTemaTesisRegistros < ActiveRecord::Migration[6.0]
  def change
    add_reference :tema_tesis_registros, :caso, null: false, foreign_key: true
  end
end
