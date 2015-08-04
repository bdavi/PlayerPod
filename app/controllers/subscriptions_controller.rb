class SubscriptionsController < ApplicationController
  def index
    @subscriptions = current_user.subscriptions
  end
  
  def show
  end

  def new
  end

  def create
    passed_feed_url = params[:feed_url]
    
    # Get the feed if it exists
    feed = Feed.where(feed_url: passed_feed_url).first

    # If the feed doesn't exist then create it
    if not feed then
      feed = Feed.new(feed_url: passed_feed_url)
      if not feed.save
        flash[:error] = "Invalid Feed"
        redirect_to subscriptions_path
        return
      end
    end

    # Create Subscription
    if current_user.subscriptions.create(feed: feed)
      flash[:notice] = "Subscription created."
    else
      flash[:error] = "There was an error creating this subscription."
    end

    redirect_to subscriptions_path

  end

  def edit
  end

  def update
  end

  def destroy
  end


end
