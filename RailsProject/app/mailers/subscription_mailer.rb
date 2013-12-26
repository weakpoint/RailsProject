class SubscriptionMailer < ActionMailer::Base
  default from: 'notifications@example.com'
 
  def newsletter(subscription)
    @url  = 'http://localhost:3000/'
    mail(to: subscription.email, subject: 'Zapraszamy na nasza strone')	
  end
  
  def welcome(subscription)
    @subscription = subscription
    @url  = 'http://localhost:3000/'
    mail(to: @subscription.email, subject: 'Dziekuje - Weather forecast')
end
end
