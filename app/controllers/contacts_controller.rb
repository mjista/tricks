class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end
	def create
    @contact = Contact.new(contact_params)
 if  @contact.valid?
    
      ContactMailer.contact_us(@contact).deliver_now # Je vais expliquer cette ligne juste après...
      redirect_to root_path
       flash[:notice] = "Message envoye"
    else
      render :new
      flash[:alert] = "Message  non envoye"
    end
  end
  private
  def contact_params

 params.require(:contact).permit( :name,  :email, :message,:sujet)
end
end

