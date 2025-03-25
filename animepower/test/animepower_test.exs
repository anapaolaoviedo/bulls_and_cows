defmodule AnimepowerTest do
  use ExUnit.Case
  doctest Animepower

  test "basic training" do
    levels = [10, 20, 30]
    assert AnimePower.total_power(levels) == 60
  end

  test "training with power boost" do
    levels = [10, :training, 20, 30]
    assert AnimePower.total_power(levels) == 80
  end

  test "defeating a boss" do
    levels = [10, 20, :boss, 30]
    assert AnimePower.total_power(levels) == 90
  end

  test "perfect training and boss fight" do
    levels = [10, :training, 20, :boss, 30]
    assert AnimePower.total_power(levels) == 110
  end
end
