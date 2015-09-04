require 'rails_helper'

describe EpisodePlaysController do

  describe "GET #create" do
    it "raises NoMethodError if no user present" do
      expect {get :create}.to raise_error(NoMethodError)
    end

    it "raises NoMethodError if no user present" do
      expect {get :create}.to raise_error(NoMethodError)
    end


  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
