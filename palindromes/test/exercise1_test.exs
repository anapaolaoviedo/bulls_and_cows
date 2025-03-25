defmodule Exercise1Test do
  use ExUnit.Case


  test "reverses a given 'charlist'" do
    assert Exercise1.reverse(~c"abracadabra") == ~c"arbadacarba"
    assert Exercise1.reverse(~c"Panama") == ~c"amanaP"
  end


  test "replaces any lowercase character in a given 'charlist' by its corresponding uppercase" do
    assert Exercise1.upcase(~c"abracadabra") == ~c"ABRACADABRA"
    assert Exercise1.upcase(~c"Panama") == ~c"PANAMA"
  end

  @tag :skip
  test "removes non alphabetical caracters from a given 'charlist'" do
    assert Exercise1.remove_non_alpha(~c"w o r d") == ~c"word"
    assert Exercise1.remove_non_alpha(~c"w1o2r3d") == ~c"word"
  end

  @tag :skip
  test "checks simple words" do
    assert Exercise1.palindrome(~c"redivider") == true
    assert Exercise1.palindrome(~c"abracadabra") == false
  end

  @tag :skip
  test "checks words, case insensitively" do
    assert Exercise1.palindrome(~c"ReDivider") == true
  end

  @tag :skip
  test "ignores non alphabetic characters" do
    assert Exercise1.palindrome(~c"A man, a plan, a canal -- Panama") == true
    assert Exercise1.palindrome(~c"Madam, I\'m Adam!") == true
  end
end
