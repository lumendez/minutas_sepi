class CreateTipoCasos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_casos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
