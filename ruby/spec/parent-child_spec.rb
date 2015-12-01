require_relative '../parent-child.rb'

describe "parent child should be..." do
  before(:each) do
  	@data = {}
  end
  it "should be true" do
  	expect_result = {

  	}
    expect(parent_child @data).to equal(expect_result)
  end
end