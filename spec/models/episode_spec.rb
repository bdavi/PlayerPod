require 'rails_helper'

describe Episode do
  context "methods" do 
    before do
      @episode = build(:episode)
    end

    it "responds to #title" do
      expect(@episode).to respond_to(:title)
    end

    it "responds to #link" do
      expect(@episode).to respond_to(:link)
    end

    it "responds to #description" do
      expect(@episode).to respond_to(:description)
    end

    it "responds to #pubDate" do
      expect(@episode).to respond_to(:pubDate)
    end

    it "responds to #duration" do
      expect(@episode).to respond_to(:duration)
    end

    it "responds to #audio_url" do
      expect(@episode).to respond_to(:audio_url)
    end

    it "responds to #guid" do
      expect(@episode).to respond_to(:guid)
    end

    it "responds to #audio_type" do
      expect(@episode).to respond_to(:audio_type)
    end
  end

  describe "validations" do 
    it "is valid with associated feed" do
      episode = create(:episode, :with_feed)
      expect(episode).to be_valid
    end

    it "is invalid without an associated feed" do 
      episode = build(:episode)
      expect(episode).to be_invalid
    end
  end
end
