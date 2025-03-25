defmodule ListsTest do
  use ExUnit.Case
  test "reverse a list" do
    assert Lists.reverse([1,2,3,4,5]) == [5,4,3,2,1]
  end

  test "separating odd and even numberes"do
    assert Lists.separate([1,2,3,4,5]) == [[5,3,1],[4,2]]
  end
end
