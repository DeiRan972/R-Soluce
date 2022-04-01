class ChangeTypeToKindOfInTables < ActiveRecord::Migration[6.1]
  def change
    rename_column :daysoffs, :type, :kindof
    rename_column :holidays, :type, :kindof
  end
end
