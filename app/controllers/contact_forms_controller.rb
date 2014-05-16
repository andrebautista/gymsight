class ContactFormsController < ApplicationController
  def new
    @consultation_form = ConsultationForm.new(params[:contact_form])
    @question_form = QuestionForm.new(params[:contact_form])
    @gs_active = "header-active"
    @gs_header_active = "active"
  end

  def create
    @consultation_form = ConsultationForm.new(params[:contact_form])
    @question_form = QuestionForm.new(params[:contact_form])
    if @consultation_form.valid?
      @consultation_form.deliver
    elsif @question_form.valid?
      @question_form.deliver
      respond_to do |format|
        format.html  { redirect_to contact_path, notice: "Message sent! A gymsight trainer will respond shortly." }
      end
    else
      render action: 'new', notice: "invalid input"
    end
  end


  private
    def post_params
      params.require(:contact_form).permit(:name, :age, :occupation, :email_consultation, :email_question, :phone_number, :training_program,
        :notes, :nickname)
    end
end
