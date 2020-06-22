class AddValidacionAsuntosEscolaresToCasos < ActiveRecord::Migration[6.0]
  def change
    add_column :casos, :validacion_asuntos_escolares, :boolean, default: false
  end
end
