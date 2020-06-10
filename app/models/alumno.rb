class Alumno < ApplicationRecord
  belongs_to :user
  has_many :casos, dependent: :destroy
end
