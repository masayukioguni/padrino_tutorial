# -*- encoding: utf-8 -*-
require 'spec_helper'

describe "Player Model" do
  before do
    @player = FactoryGirl.build(:player)
    @player.save.should be_true
  end

  it "create" do
    @player.should be_valid
  end

  it "all" do
    @player = Player.all
    @player.should be_true
  end

  it "update" do
    Player.update(:first,:name => "mod_title")
    record = Player.find(:first)
    record.name.should == "mod_title"
  end

  it "update japanese" do
    Player.update(:first,:name => "コクリコ坂から")
    record = Player.find(:first)
    record.name.should == "コクリコ坂から"
  end

  it "name null update == false " do
    record_src = Player.find(:first)
    record_src.name = nil
    false == record_src.save()
  end

  it "name null create == false " do
    player = FactoryGirl.build(:player,:name => nil)
    player.save.should be_false
  end

  it "insert" do
    player = FactoryGirl.build(:player)
    player.save.should be_true
  end

  it "delete" do
    id = Player.find(:first).id
    Player.delete(id)    
    proc {	
	record = Player.find(id)
    }.should raise_error(  ActiveRecord::RecordNotFound )
  end

  it "find" do
    record = Player.find(:first)
    record.should be_true
  end

  after do
    Player.delete_all
  end
end
