require 'spec_helper'

describe Post do
  it "Test" do
   @post = Factory.build(:post)
   @post.save.should be_true

  end
  #subject { FactoryGirl.build(:post) }
end

