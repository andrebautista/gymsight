class Question < MailForm::Base
  attributes :name, :validate => true
  attributes :email_question, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :training_program
  attributes :notes,  :validate => true
  attribute :nickname,  :captcha  => true


  def headers
    {
      :from => "contact@gymsight.com",
      :subject => "#{name} - New Question",
      :to => "dewayne@gymsight.com"
    }
  end
end
