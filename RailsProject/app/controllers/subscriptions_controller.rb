class SubscriptionsController < ApplicationController
  # GET /subscriptions
  # GET /subscriptions.json
  def index
    @subscription = Subscription.new
  end

  # GET /subscriptions/new
  # GET /subscriptions/new.json
  def new
    @subscription = Subscription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subscription }
    end
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(params[:subscription])

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to "/subscriptions/done", notice: 'Twoj adres zostal dodany do listy mailingowej' }
        format.json { render json: @subscription, status: :created, location: @subscription }
      else
        format.html { render action: "new" }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

   def done
@subscriptions = Subscription.all
    respond_to do |format|
      format.html
      format.json { render json: @subscriptions }
    end
  end
  
  def remove
  if params[:subscription] == nil
	@subscription = Subscription.new
  else
	@subscription = Subscription.find_by_email(params[:subscription][:email])
	if @subscription != nil
		@subscription.destroy
		respond_to do |format|
		format.html { redirect_to "/subscriptions/done", notice: 'Twoj adres e-mail zostal usuniety' }
		end
	else
		respond_to do |format|
		format.html { redirect_to "/subscriptions/done", notice: 'Niepoprawny adres e-mail' }
		end
	end
  end
  end
end
