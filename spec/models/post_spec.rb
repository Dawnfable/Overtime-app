require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do 
    before do
      @post = FactoryGirl.create(:post)
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without a date, rationale, ocertime_request' do
      @post.date = nil
      @post.Rationale = nil
      @post.ocertime_request = nil
      expect(@post).to_not be_valid
    end

    it 'has an ocertime_request greater than 0.0' do
      @post.ocertime_request = 0.0
      expect(@post).to_not be_valid
    end
  end
end