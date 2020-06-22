class AddValidacionCuerpoAcademicoToCasos < ActiveRecord::Migration[6.0]
  def change
    add_column :casos, :validacion_cuerpo_academico, :boolean, default: false
  end
end
