class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new(params[:contact_form])
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.valid?
      # TODO send message here
      redirect_to root_url, notice: "Message sent! Thank you for contacting us."
    else
      format.html { render action: 'new' }
    end
  end


  private
    def post_params
      params.require(:contact_form).permit(:name, :email, :age, :training_program,
        :goals, :availability)
    end
end
