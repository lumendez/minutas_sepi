class DirectorTesisRegistroPolicy < ApplicationPolicy

  def index?
    user.administrador? or user.coordinador? or user.asuntos_escolares? or user.colegio_profesores?
  end

  def show?
    user.administrador? or user.coordinador? or user.asuntos_escolares? or user.colegio_profesores?
  end

  def create?
    user.administrador? or user.usuario?
  end

  def new?
    user.administrador? or user.usuario?
  end

  def update?
    user.administrador? or user.coordinador? or user.asuntos_escolares? or user.colegio_profesores?
  end

  def edit?
    user.administrador? or user.coordinador? or user.asuntos_escolares? or user.colegio_profesores?
  end

  def destroy?
    user.administrador?
  end

end
