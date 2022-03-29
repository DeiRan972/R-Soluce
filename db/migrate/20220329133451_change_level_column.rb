class ChangeLevelColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :roles, :type, :level
  end
end
