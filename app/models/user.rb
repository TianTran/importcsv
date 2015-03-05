class User < ActiveRecord::Base
  require 'csv'
  validates :userID,
   presence: true, 
   uniqueness: true
  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    User.create! row.to_hash
  end
end
end
