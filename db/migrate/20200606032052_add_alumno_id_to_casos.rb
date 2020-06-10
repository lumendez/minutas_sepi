class AddAlumnoIdToCasos < ActiveRecord::Migration[6.0]
  def change
    add_reference :casos, :alumno, null: false, foreign_key: true
  end
end
