# frozen_string_literal: true

class ContactsController < InheritedResources::Base

  def show
    @contact = Contact.all.last
  end


  def contact_params
    params.require(:contact).permit(:name, :address, :content, :email, :phone)
  end
end


