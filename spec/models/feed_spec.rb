require 'rails_helper'
require_relative 'feed_spec_helper'

describe Feed, type: :model do
  include FeedSpecHelper
  before do
    set_up_example_feeds
  end

  describe "responds to properties" do 
    it "should respond to #subscriptions" do
      expect(Feed.new).to respond_to(:subscriptions)
    end

    it "should respond to #episodes" do
      expect(Feed.new).to respond_to(:episodes)
    end    

    it "should respond to #title" do
      expect(Feed.new).to respond_to(:title)
    end

    it "should respond to #feed_url" do
      expect(Feed.new).to respond_to(:feed_url)
    end

    it "should respond to #description" do
      expect(Feed.new).to respond_to(:description)
    end

    it "should respond to #downloaded_feed_xml" do
      expect(Feed.new).to respond_to(:downloaded_feed_xml)
    end
  end

  describe "feed parser" do
    context "should parse a valid feed" do
      before do
        @feed = Feed.create(feed_url: @simple_valid_feed.feed_url, downloaded_feed_xml: @simple_valid_feed.xml)
        @feed.parse_xml_from_server
      end

      it "correctly saves the feed title" do
        expect(@feed.title).to eq(@simple_valid_feed.expected_title)
      end

      it "correctly saves the feed url" do
        expect(@feed.feed_url).to eq(@simple_valid_feed.feed_url)
      end

      it "correctly saves the feed description" do
        expect(@feed.description).to eq(@simple_valid_feed.expected_description)
      end

      it "correctly creates the correct number of episodes" do
        expect(@feed.episodes.count).to eq(@simple_valid_feed.expected_episode_count)
      end
    end

    context "should parse a valid feed that includes CDATA tags" do
      before do
        @feed = Feed.create(feed_url: @valid_feed_with_cdata.feed_url, downloaded_feed_xml: @valid_feed_with_cdata.xml)
        @feed.parse_xml_from_server
      end

      it "correctly saves the feed title" do
        expect(@feed.title).to eq(@valid_feed_with_cdata.expected_title)
      end

      it "correctly saves the feed url" do
        expect(@feed.feed_url).to eq(@valid_feed_with_cdata.feed_url)
      end

      it "correctly saves the feed description" do
        expect(@feed.description).to eq(@valid_feed_with_cdata.expected_description)
      end

      it "correctly creates the correct number of episodes" do
        expect(@feed.episodes.count).to eq(@valid_feed_with_cdata.expected_episode_count)
      end
    end



  end




end


