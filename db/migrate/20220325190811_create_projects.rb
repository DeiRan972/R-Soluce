class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :number_of_day

      t.timestamps
    end
  end
end
