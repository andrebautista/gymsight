class Consultation < MailForm::Base
  attributes :name, :validate => true
  attributes :age
  attributes :occupation
  attributes :email_address, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :phone_number
  attributes :training_program
  attributes :notes,  :validate => true
  attribute :nickname,  :captcha  => true


  def headers
    {
      :from => "contact@gymsight.com",
      :subject => "#{name} - Consultation Request",
      :to => "dewayne@gymsight.com"
    }
  end
end
