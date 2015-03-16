class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :drink_leve, :string
    add_column :users, :smoker, :boolean
    add_column :users, :phone, :string
    add_column :users, :addres, :string
    add_column :users, :email, :string
  end
end
