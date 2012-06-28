require 'spec_helper'

describe Author do
  subject { @author }
  context "Author#25" do
    before { @author = FactoryGirl.create(:author) }

    it { should be_valid }
    #its("books.count") { should == BookAuthor.where(:author_id => @author.id).count}
  end
  describe 'name.length' do
    context '= 30' do
      before { @author = FactoryGirl.build(:author, name: 'a' * 30) }
      it { should be_valid }
    end
  end
end

describe "Author Model" do
  let(:author) { Author.new }
  it 'can be created' do
    author.should_not be_nil
  end
end
