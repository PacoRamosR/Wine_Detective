class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
  end

    private

  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
