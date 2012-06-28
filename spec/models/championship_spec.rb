require 'spec_helper'

describe "Championship Model" do
  before do
    @cs = FactoryGirl.build(:championship)
    @cs.save.should be_true
  end
 
  it "create" do
    @cs.should be_valid
  end
  
  it "all" do
    @cs = Championship.all
    @cs.should be_true
  end

  it "update" do
    Championship.update(:first,:name => "mod_title")
    record = Championship.find(:first)
    record.name.should == "mod_title"
  end

  it "insert" do
    post = FactoryGirl.build(:championship)
    post.save.should be_true
  end

  it "delete" do
    id = Championship.find(:first).id
    Championship.delete(id)    
    proc {	
	record = Championship.find(id)
    }.should raise_error(  ActiveRecord::RecordNotFound )
  end

  it "find" do
    record = Championship.find(:first)
    record.should be_true
  end

  after do
    Championship.delete_all
  end
end
