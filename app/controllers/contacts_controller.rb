class ContactsController < InheritedResources::Base
  

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to thanks_path
    else
      render :action => 'new'
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
