class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :full_name, :last_name, :password_digest, :password_reset_sent_at, :password_reset_token
end
