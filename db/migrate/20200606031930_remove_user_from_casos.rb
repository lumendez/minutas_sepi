class RemoveUserFromCasos < ActiveRecord::Migration[6.0]
  def change
    remove_reference :casos, :user, index: true, foreign_key: true
  end
end
