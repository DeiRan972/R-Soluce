class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :status
      t.references :project, null: false, foreign_key: true
      t.integer :estimate_time
      t.integer :real_time
      t.decimal :tjm

      t.timestamps
    end
  end
end
