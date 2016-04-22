class Contact < MailForm::Base
  attribute :first_name,    :validate => true
  attribute :last_name,     :validate => true
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone_number,   :validate => true
  attribute :message,       :validate => true
  attribute :nickname,      :captcha => true

  def headers
    {
      :subject => "Twopeace Contact Form",
      :to => "scotchard@twopeace.co",
      :from => %("#{name}" <#{email}>)
    }
  end
end 