class SubscriptionsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @subscriptions = Subscription.all
  end

  def new
    plan = Plan.find(params[:plan_id])
    @subscription = plan.subscriptions.build
    @subscription.email = current_user.email
  end

  def create
    @subscription = Subscription.new(params[:subscription])
    @subscription.email = current_user.email

    if @subscription.save
      redirect_to @subscription, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end
end