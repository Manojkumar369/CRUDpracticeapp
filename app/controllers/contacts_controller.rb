class ContactsController < ApplicationController
	def new
		@contact=Contact.new
	end

	def create
    @contact=Contact.new(contact_params)
    if @contact.save
    	UsermailerMailer.acknowledge_mail(@contact).deliver_later
    	flash[:notice]="your info is here"
      redirect_to root_path
    else
      render :new
    end
  end
  
	private 
	  def contact_params
	    params.require(:contact).permit(:name, :description, :mobile_no, :email)
	  end
end
