class ContactsController < InheritedResources::Base

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end

