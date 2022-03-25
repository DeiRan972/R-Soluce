class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :enable, :boolean
    add_column :users, :admin, :boolean
    add_column :users, :avatar, :string
  end
end
