class User < ActiveRecord::Base
  require 'csv'
  validates :userID,
   presence: true, 
   uniqueness: true
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      user_hash = row.to_hash # exclude the price field
      user = User.where(id: user_hash["id"])

      if user.count == 1
        user.first.update_attributes(user_hash)
      else
        User.create!(user_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
