require 'rails_helper'

describe Subscription, type: :model do

  describe "methods" do 
    it "should respond to #feed" do
      expect(Subscription.new).to respond_to(:feed)
    end

    it "should respond to #user" do
      expect(Subscription.new).to respond_to(:user)
    end
  end

  context "validations" do
    before do
      @user = User.create(email: "null@null.com", password: "l;aksjdfiasoeijr")
      @feed = Feed.create(feed_url: "http://www.test.com")
    end

    it "is valid with user_id and feed_id" do 
      subscription = Subscription.new(user_id: @user.id, feed_id: @feed.id)
      expect(subscription).to be_valid
    end

    it "is invalid without a feed_id" do
      subscription = Subscription.new(user_id: @user.id)
      expect(subscription).to be_invalid
    end

    it "is invalid without a user_id" do 
      subscription = Subscription.new(feed_id: @feed.id)
      expect(subscription).to be_invalid
    end
  end

  describe "scopes" do
    context "#visible_to(user)" do
      before do
        @user1 = User.create(email: "null@null.com", password: "l;aksjdfiasoeijr")
        @user2 = User.create(email: "pizza@isdelicious.com", password: "dj8ndflsdfn")
        @feed1 = Feed.create(feed_url: "http://www.test.com")
        @feed2 = Feed.create(feed_url: "http://www.hello.com")
        @subscription1 = Subscription.create(user: @user1, feed: @feed1)
        @subscription2 = Subscription.create(user: @user1, feed: @feed2)
        @subscription3 = Subscription.create(user: @user2, feed: @feed2)
        @subscription4 = Subscription.create(user: @user2, feed: @feed1)
      end

      it "should return only subscriptions associated with user" do
        expect(Subscription.visible_to(@user1)).to eq([@subscription1, @subscription2])
      end

      it "should fail if no user present" do 
        expect{ Subscription.visible_to(nil) }.to raise_error(NoMethodError)
      end
    end
  end
end
