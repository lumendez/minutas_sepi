class TemaTesisRegistro < ApplicationRecord
  belongs_to :caso
  validates :nombre, presence: true
end
