# User Model
class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  devise :trackable, :omniauthable
end
