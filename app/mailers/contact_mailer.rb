class ContactMailer < ApplicationMailer
	default from: 'tricksandtips.digital@gmail.com'
	def contact_us(contact)
		@email = contact.email
		@nom = contact.name
		
    @message = contact.message
    @sujet= contact.sujet

    mail(to: "tricksandtips.digital@gmail.com", subject:"Nouveau message d'un utilisateur", from: contact.email)
  end
end
