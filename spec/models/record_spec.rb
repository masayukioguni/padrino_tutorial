require 'spec_helper'

describe "Record Model" do
  
  before do
    player = FactoryGirl.build(:player)
    player.save.should be_true
    cs = FactoryGirl.build(:championship)
    cs.save.should be_true
    @record = FactoryGirl.build(:record,:player_id => player.id,:championship_id => cs.id)
    @record.save.should be_true
  end
  
  it "create" do
    @record.should be_valid
  end

  it "all" do
    record = Record.all
    record.should be_true
  end

  it "update" do
    Record.update(:first,:weight => 66.6,:squat => 166.6,:benchpress => 266.6,:deadlift => 366.6)
    record = Record.find(:first)
    record.weight.should == 66.6
    record.squat.should == 166.6
    record.benchpress.should == 266.6
    record.deadlift.should == 366.6
  end

  it "insert" do
    record = FactoryGirl.create(:record,:player_id => 1,:championship_id => 1)
    record.save.should be_true
  end

  it "delete" do
    id = Record.find(:first).id
    Record.delete(id)    
    proc {	
	record = Record.find(id)
    }.should raise_error(  ActiveRecord::RecordNotFound )
  end

  it "find" do
    record = Record.find(:first)
    record.should be_true
  end

  after do
    Player.delete_all
    Championship.delete_all
    Record.delete_all
  end
  
end
