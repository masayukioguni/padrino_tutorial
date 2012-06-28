require 'spec_helper'

describe "Record Model" do
  let(:record) { Record.new }
  it 'can be created' do
    record.should_not be_nil
  end
end
