defmodule Lists do
  def reverse(list), do: reverse(list, [])
  def reverse([], acc), do: acc
  def reverse([h|t], acc), do: reverse(t,[h|acc])


  def separate(list), do: separate(list,[[],[]])
  def separate([],acc), do: acc
  def separate([h|t], [odd,even]) do
    if rem(h, 2) == 0 do
      separate(t, [odd, [h | even]])
    else
      separate(t, [[h | odd], even])
  end
end




end
