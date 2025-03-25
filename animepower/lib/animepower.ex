defmodule Animepower do
  def total_power(levels) do
    process(levels, 0, 1)
    #levels is the list of POWER LEVELS and events
    # in 0 we are initializing the ACC
    # multiplier starts at 1 -> boost
  end

  # Base case: If there are no levels left, return the total power
  #if there are no levels, just return the current level
  #no more multiplicator
  defp process([], acc, _multiplier), do: acc

  # If the character trains, double the next battle's power
  defp process([:training | rest], acc, _multiplier) do
    process(rest, acc, 2)
  end

  # If the character defeats a boss, add a power boost of 20
  defp process([:boss | rest], acc, multiplier) do
    process(rest, acc + 20, multiplier)
  end

  # Normal power level, apply multiplier (from training if active)
  defp process([power | rest], acc, multiplier) when is_integer(power) do
    process(rest, acc + (power * multiplier), 1)  # Reset multiplier after use
  end
end
