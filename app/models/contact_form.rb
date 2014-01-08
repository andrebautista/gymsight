class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :training_program,   :validate => true
  attribute :goals,  :validate => true
  attribute :availability, :validate => true
  attribute :nickname,  :captcha  => true


  def headers
    {
      :from => "contact@gymsight.com",
      :subject => "Contact",
      :to => "dewayne@gymsight.com"
    }
  end
end
