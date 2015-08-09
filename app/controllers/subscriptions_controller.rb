class SubscriptionsController < ApplicationController
  def index
    @subscriptions = current_user.subscriptions
  end
  
  def create
    # Use http if no protocol provided or if "feed://" protocol provided. 
    # Needed for URI parse and to be sure we don't end up with two feeds for the 
    # same podcast (one with and one without the protocol)
    cleaned_feed_url = params[:feed_url].gsub("feed://", "")
    cleaned_feed_url = cleaned_feed_url =~ /^http(s)?:\/\/.+/ \
                     ? cleaned_feed_url \
                     : "http://#{cleaned_feed_url}"
                       
    # Get or create feed based on passed url
    feed = Feed.where(feed_url: cleaned_feed_url).first \
           || Feed.create(feed_url: cleaned_feed_url)

    # Handle invalid feed
    if feed.invalid?
      redirect_to(subscriptions_path, alert: "Invalid Feed") and return
    end

    # Handle duplicate subscription
    unless current_user.subscriptions.where(feed_id: feed.id).empty?
      redirect_to(subscriptions_path, alert: "You are already subscribed to this feed.") and return
    end

    # Create New Subscription
    if current_user.subscriptions.create(feed: feed)
      flash[:notice] = "Subscription created."
    else
      flash[:error] = "There was an error creating this subscription."
    end

    redirect_to subscriptions_path
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @title = @subscription.feed.title
    if @subscription.destroy
      flash[:alert] = "Unsubscribed from #{@title}."
    else
      flash[:error] = "An error occurred unsubscribing from #{@title}."
    end

    redirect_to subscriptions_path
  end
end
