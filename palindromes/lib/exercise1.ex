defmodule Exercise1 do
  def reverse(w),do: reverse(w,[])
  def reverse([],acc), do: acc
  def reverse([h|t],acc), do: reverse(t,[h|acc])

  def upcase([],acc), do: acc
  def upcase([h|t],acc), do: upcase(t,[h-32|acc])



end
