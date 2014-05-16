class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new(params[:contact_form])
    @gs_active = "header-active"
    @gs_header_active = "active"
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.valid?
      # TODO send message here
      @contact_form.deliver
      respond_to do |format|
        format.html  { redirect_to controller: 'static_pages', action: 'contact',  notice: "Message sent! A gymsight trainer will respond shortly." }
      end
    else
      render action: 'new', notice: "invalid input"
    end
  end


  private
    def post_params
      params.require(:contact_form).permit(:name, :age, :occupation, :email_consultation, :phone_number, :training_program,
        :notes, :email_question)
    end
end
