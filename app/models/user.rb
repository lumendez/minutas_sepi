class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :tipo_usuario
  has_many :alumnos
  before_validation :asignar_usuario

  def usuario?
    self.tipo_usuario.nombre == "Usuario"
  end

  def administrador?
    self.tipo_usuario.nombre == "Administrador"
  end

  def coordinador?
    self.tipo_usuario.nombre == "Coordinador"
  end

  def sepi?
    self.tipo_usuario.nombre == "SEPI"
  end

  private

    def asignar_usuario
      if self.tipo_usuario.nil?
        self.tipo_usuario = TipoUsuario.find_by(nombre: "Usuario")
      end
    end
end
