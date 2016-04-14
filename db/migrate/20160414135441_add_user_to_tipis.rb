class AddUserToTipis < ActiveRecord::Migration
  def change
    add_reference :tipis, :user, index: true, foreign_key: true
  end
end
