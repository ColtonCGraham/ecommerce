class ContactsController < InheritedResources::Base

  private

    def contact_params
      params.require(:contact).permit(:name, :address, :content, :email, :phone)
    end

end
