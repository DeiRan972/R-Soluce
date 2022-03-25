class CreateDaysoffs < ActiveRecord::Migration[6.1]
  def change
    create_table :daysoffs do |t|
      t.date :date
      t.string :type

      t.timestamps
    end
  end
end
