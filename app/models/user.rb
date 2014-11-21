class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :middle_name
   

  has_secure_password
  validates_presence_of:first_name , :message => "Please enter the name"
  validates_length_of:first_name , :maximum => 25
  validates_presence_of:last_name
  validates_length_of:last_name , :maximum => 25
 validates_presence_of:middle_name
  validates_length_of:middle_name , :maximum => 25
 validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i 

end
