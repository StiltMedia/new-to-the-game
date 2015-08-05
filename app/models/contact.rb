class Contact < ActiveRecord::Base

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to thanks_path
    else
      render :action => 'new'
    end
  end

end
