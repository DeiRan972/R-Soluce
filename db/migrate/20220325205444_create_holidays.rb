class CreateHolidays < ActiveRecord::Migration[6.1]
  def change
    create_table :holidays do |t|
      t.date :date
      t.string :type

      t.timestamps
    end
  end
end
