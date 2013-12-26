ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "railsproject.com",  
  :user_name            => "railsproject69@gmail.com",  
  :password             => "haslodorails1",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}