defmodule BullsAndCowsTest do
  use ExUnit.Case

  test "Scores a guess with no match" do
    assert BullsAndCows.score_guess("1234", "5678") == "0 Bulls, 0 Cows"
    assert BullsAndCows.score_guess("2345", "6789") == "0 Bulls, 0 Cows"
  end

  test "Scores a guess with 1 Bull and 0 Cows" do
    assert BullsAndCows.score_guess("1234", "1567") == "1 Bull, 0 Cows"
  end

  test "Scores a guess with 0 Bulls and 2 Cows" do
    assert BullsAndCows.score_guess("1234", "4321") == "0 Bulls, 4 Cows"
  end


end
