require 'rails_helper'

RSpec.describe SubscriptionsController, type: :controller do

  describe "GET #create" do
    it "creates a new subscription for the current user" do
      user = FactoryGirl.create(:user)
      sign_in user

      get :create, { feed_url: "http://www.test.com" }
      expect(user.subscriptions.count).to eq(1)
    end

    it "raises NoMethodError if no feed_url present" do
      user = FactoryGirl.create(:user)
      sign_in user

      expect {get :create}.to raise_error(NoMethodError)
    end

    it "raises NoMethodError if no user present" do
      expect {get :create}.to raise_error(NoMethodError)
    end
  end

  # describe "DELETE #destroy" do
  #   it "deletes the users subscription" do
  #     user = FactoryGirl.create(:user_with_subscription)
  #     $stdout.puts ("=" * 20) + user.subscriptions.count + "\n"

  #     delete :destroy, {id: user.subscriptions.first.id}
  #     expect(user.subscriptions.count).to eq(0)
  #   end
  # end

  describe "GET #index" do
    it "returns http success if user is signed in" do
      sign_in FactoryGirl.create(:user)

      get :index
      expect(response).to have_http_status(:success)
    end

    it "raises NoMethodError if no user signed in" do      
      expect {get :index }.to raise_error(NoMethodError)
    end
  end

end
