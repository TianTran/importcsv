class User < ActiveRecord::Base
  require 'csv'
  validates :userID,
   presence: true, 
   uniqueness: true
  validates :color,
   		inclusion: { 
   			in: %w(white black yellow),
		    message: "%{value} is not a valid color" },
		presence: true
  def self.import(file)
    CSV.foreach(file.path, :headers => true) do |row|
      User.create! row.to_hash
    end
  end
end
