defmodule Example do
  def factorial(0), do: 1 #base case
  def factorial(n) when n> 0, do: n* factorial(n-1) #recursion

  def test(0), do: 0; #base case
  def test(num), do: rem(num, 10) + test(div(num, 10)) #recursion

  def sumy(x, y), do: x+y
  def resty(a,b), do: a-b
  def multipli(w,e), do: w*e
  def divisin(r,s), do: r/s

  #lists
  def lol([]), do: 0
  def lol([h|t]) do
    h+lol(t)
  end

  def prod([],acc), do: acc
  def prof([h|t],acc), do: prod(t,acc*h)

  def length([],acc), do: acc
  def length([_h|t],acc), do: length(t,acc+ 1)

  def map([],_f), do: []
  def map([h|t],f), do: [f.(h)| map(t,f)]

  def foldl([],acc,_f), do: acc
  def foldl([h|t],acc,f),do: foldl(t,f.(h,acc), f)

  def avg(list) do
    list
  end

end

defmodule World do
  def sayhelo(variable) do
    IO.puts "Hello, #{variable}!"
  end
end

defmodule Nummies do

  def even([]), do: 0
  def even([h|t]) do

end

end
