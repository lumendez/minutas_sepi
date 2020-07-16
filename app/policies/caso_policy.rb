class CasoPolicy < ApplicationPolicy

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

  def valida_cuerpo_academico?
    user.administrador? or user.coordinador?
  end

  def valida_asuntos_escolares?
    user.administrador? or user.asuntos_escolares?
  end

  def valida_colegio_profesores?
    user.administrador? or user.colegio_profesores?
  end

  def valida_todo?
    user.administrador?
  end

  def cuerpo_academico?
    user.coordinador? or user.administrador?
  end

  def asuntos_escolares?
    user.asuntos_escolares? or user.administrador?
  end

  def colegio_profesores?
    user.colegio_profesores? or user.administrador?
  end

end
