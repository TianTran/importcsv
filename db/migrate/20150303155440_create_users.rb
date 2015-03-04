class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userID
      t.float :latitude
      t.float :longitude
      t.string :smoker
      t.string :drink_level
      t.string :dress_preference
      t.string :ambience
      t.string :transport
      t.string :marital_status
      t.string :hijos
      t.integer :birth_year
      t.string :interest
      t.string :personality
      t.string :religion
      t.string :activity
      t.string :color
      t.integer :weight
      t.string :budget
      t.float :height

      t.timestamps null: false
    end
  end
end
