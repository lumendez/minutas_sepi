class RemoveAlumnosFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :alumno, index: true, foreign_key: true
  end
end
