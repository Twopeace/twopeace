class Contact < MailForm::Base
  attribute :first_name,    :validate => true
  attribute :last_name,     :validate => true
  attribute :phone_number,  :validate => /\A\d{3}-\d{3}-\d{4}\z/ 
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,       :validate => true
  attribute :nickname,      :captcha => true

  def headers
    {
      :subject => "Twopeace Contact Form",
      :to => "scotchard@twopeace.co",
      :from => %("#{first_name}" "#{last_name}" <#{email}> <#{phone_number}>)
    }
  end
end 