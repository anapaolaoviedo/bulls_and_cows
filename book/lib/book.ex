
defmodule Book do
  def sumy([]), do: 0 #base case
  def sumy([h|t]), do: h + sumy(t)

  def suma([], acc), do: acc
  def suma([h|t],acc) do
    suma(t,acc + h)
  end

  def sum_even([], acc), do: acc
  def sum_even([h|t], acc) do
    if rem(h,2) == 0 do
      sum_even(t, acc + h )
    else
      sum_even(t, acc)
    end
  end


end
