class ContactFormsController < ApplicationController
  def new
    @consultation = Consultation.new
    @question = Question.new
    @gs_active = "header-active"
    @gs_header_active = "active"
  end

  def consultation_request
    @consultation = Consultation.new(consultation_params)
    if @consultation.valid?
      @consultation.deliver
      respond_to do |format|
        format.html  { redirect_to contact_path, notice: "Message sent! A gymsight trainer will respond shortly." }
      end
    else
      redirect_to contact_path, notice: "Invalid input, please enter a name, valid email, and note"
    end
  end

  def question_request
    @question = Question.new(question_params)
    if @question.valid?
      @question.deliver
      respond_to do |format|
        format.html  { redirect_to contact_path, notice: "Message sent! A gymsight trainer will respond shortly." }
      end
    else
      redirect_to contact_path, notice: "Invalid input, please enter a name, valid email, and your question"
    end
  end


  private
    def consultation_params
      params.require(:consultation).permit(:name, :age, :occupation, :email_consultation, :phone_number, :training_program,
        :notes)
    end

    def question_params
      params.require(:question).permit(:name, :email_question, :training_program, :notes)
    end
end
