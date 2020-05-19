class CreateAlumnos < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnos do |t|
      t.string :boleta

      t.timestamps
    end
  end
end
