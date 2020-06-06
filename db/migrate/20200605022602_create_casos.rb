class CreateCasos < ActiveRecord::Migration[6.0]
  def change
    create_table :casos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tipo_caso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
