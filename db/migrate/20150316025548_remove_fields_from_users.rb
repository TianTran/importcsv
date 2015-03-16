class RemoveFieldsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :latitude, :float
    remove_column :users, :longitude, :float
    remove_column :users, :smoker, :string
    remove_column :users, :drink_level, :string
    remove_column :users, :dress_preference, :string
    remove_column :users, :ambience, :string
    remove_column :users, :transport, :string
    remove_column :users, :marital_status, :string
    remove_column :users, :hijos, :string
    remove_column :users, :interest, :string
    remove_column :users, :personality, :string
    remove_column :users, :religion, :string
    remove_column :users, :activity, :string
    remove_column :users, :budget, :string
  end
end
