require_relative 'parent-child.rb'

describe "parent child should be..." do
  it "should be equal" do

    # root nodes index must less than other childs
    @data = [
      {:id => 4, :parent => 2},
      {:id => 3, :parent => 1},
      {:id => 5, :parent => 3},
      {:id => 1, :parent => 0},
      {:id => 2, :parent => 0},
    ]

    expect_result = [
      {:id => 1, :children => [
        {
          :id => 3, :children => [
            {:id => 5, :children => []}
          ]
        }
      ]},
      {:id => 2, :children => [
        {:id => 4, :children => []}
      ]},
    ]

    result = parent_child @data
    # puts result
    expect(result).to eq(expect_result)
  end
end