# -*- encoding: utf-8 -*-
require 'spec_helper'

describe Post do
  before do
    @post = FactoryGirl.build(:post)
    @post.save.should be_true
  end

  it "create" do
    @post.should be_valid
  end
  
  it "all" do
    @post = Post.all
    @post.should be_true
  end

  it "update" do
    Post.update(:first,:title => "mod_title")
    record = Post.find(:first)
    record.title.should == "mod_title"
  end

  it "insert" do
    post = FactoryGirl.build(:post)
    post.save.should be_true
  end

  it "delete" do
    id = Post.find(:first).id
    Post.delete(id)    
    proc {	
	record = Post.find(id)
    }.should raise_error(  ActiveRecord::RecordNotFound )
  end

  it "find" do
    record = Post.find(:first)
    record.should be_true
  end
end
