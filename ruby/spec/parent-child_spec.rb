require_relative '../parent-child.rb'

describe "parent child should be..." do
  before(:each) do
  	@data = [
  		{:id => 1, :parent => 0},
  		{:id => 2, :parent => 0},
  		{:id => 3, :parent => 1},
  		{:id => 4, :parent => 2},
  	]
  end
  it "should be true" do
  	expect_result = [
  		{:id => 1, :parent => 0 , :children => [
  			{:id => 3, :parent => 1}
  		]},
  		{:id => 2, :parent => 0 , :children => [
  			{:id => 4, :parent => 2}
  		]},
  	]
  	result = parent_child @data
  	puts result
    expect(result).to eq(expect_result)
  end
end