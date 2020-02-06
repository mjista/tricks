class Contact 
	include ActiveModel::Model

 
  attr_accessor  :name, :email, :message, :sujet
 
  validates  :name, :email, :message, :sujet, presence: true
  
 

def persisted?
  false
end
 


end

