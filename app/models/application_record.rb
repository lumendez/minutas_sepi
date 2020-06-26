class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # Formato dd/mm/aaaa a las hora:minutos para cualquier objeto en la aplicación
  def creado
    self.created_at.strftime("%d/%m/%y a las %T %P")
  end
end
