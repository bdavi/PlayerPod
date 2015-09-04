require 'rails_helper'

describe Subscription do

  context "methods" do 
    before do 
      @subscription = build(:subscription)
    end

    it "should respond to #feed" do
      expect(@subscription).to respond_to(:feed)
    end

    it "should respond to #user" do
      expect(@subscription).to respond_to(:user)
    end
  end

  describe "validations" do
    it "is valid with user_id and feed_id" do 
      subscription = build(:subscription, :with_feed_and_user)
      expect(subscription).to be_valid
    end

    it "is invalid without a feed_id" do
      subscription = build(:subscription, :with_user)
      expect(subscription).to be_invalid
    end

    it "is invalid without a user_id" do 
      subscription = build(:subscription, :with_feed)
      expect(subscription).to be_invalid
    end
  end

  describe "scopes" do
    context "#visible_to(user)" do
      before(:each) do
        @user1 = create(:user)
        @user2 = create(:user)
        @feed1 = create(:feed)
        @feed2 = create(:feed)
        @subscription1 = create(:subscription, {user: @user1, feed: @feed1})
        @subscription2 = create(:subscription, {user: @user1, feed: @feed2})
        @subscription3 = create(:subscription, {user: @user2, feed: @feed2})
        @subscription4 = create(:subscription, {user: @user2, feed: @feed1})
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