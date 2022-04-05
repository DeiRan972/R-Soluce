class AddUserToDaysOffs < ActiveRecord::Migration[6.1]
  def change
    add_reference :daysoffs, :user, null: false, foreign_key: true
  end
end
