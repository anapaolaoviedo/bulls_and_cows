defmodule BullsAndCows do
  def score_guess(secret, guess) do
    secret_chars = String.graphemes(secret)
    guess_chars = String.graphemes(guess)

    bulls = count_bulls(secret_chars, guess_chars)
    cows = count_cows(secret_chars, guess_chars)

    "#{bulls} Bull#{plural(bulls)}, #{cows} Cow#{plural(cows)}"
  end

  defp count_bulls(secret, guess) do
    Enum.zip(secret, guess)
    |> Enum.count(fn {s, g} -> s == g end)
  end

  defp count_cows(secret, guess) do
    # Exclude bulls first
    secret_wo_bulls = Enum.with_index(secret)
      |> Enum.reject(fn {s, i} -> Enum.at(guess, i) == s end)
      |> Enum.map(fn {s, _} -> s end)

    guess_wo_bulls = Enum.with_index(guess)
      |> Enum.reject(fn {g, i} -> Enum.at(secret, i) == g end)
      |> Enum.map(fn {g, _} -> g end)

    count_common_elements(secret_wo_bulls, guess_wo_bulls)
  end

  defp count_common_elements(secret, guess) do
    Enum.reduce(guess, {secret, 0}, fn g, {remaining, count} ->
      if g in remaining do
        {List.delete(remaining, g), count + 1}
      else
        {remaining, count}
      end
    end)
    |> elem(1)
  end

  defp plural(1), do: ""
  defp plural(_), do: "s"
end
