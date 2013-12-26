class SubscriptionMailer < ActionMailer::Base
  default from: 'notifications@example.com'
 
  def newsletter()
    	@subscriptions = Subscription.all
		@subscriptions.each do |subscription| 
			SubscriptionMailer.spamThemAll(subscription, 'Zapraszamy na nasza strone').deliver
		end
		startNewsletterAgain()
  end
  
  def send_welcome(subscription)
  welcome(subscription).deliver
	end
	
	def welcome(subscription)
	@url  = 'http://localhost:3000/'
    mail(to: subscription.email, subject: 'Dziekuje - Weather forecast')
	end

	def spamThemAll(subscription, subject_text)
	@url  = 'http://localhost:3000/'
    mail(to: subscription.email, subject: subject_text)
	end
	
	def startNewsletterAgain
	#dodaje do kolejki kolejne wysylanie spamu :)
	SubscriptionMailer.delay(run_at: 5.minutes.from_now).newsletter
	end
	
	#handle_asynchronously :newsletter
	#handle_asynchronously :welcome
end
