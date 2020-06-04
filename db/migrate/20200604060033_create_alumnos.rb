class CreateAlumnos < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnos do |t|
      t.string :boleta
      t.string :cvu
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
