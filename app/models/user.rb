class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
  	end
  end
end
