defmodule Anagram do
  def anagrams_for(word, candidates) when is_binary(word) and is_list(candidates) do
    Enum.filter(candidates, &(sort_string(word) === sort_string(&1)))
    # for cand <- candidates, sort_string(word) === sort_string(cand), do: cand
  end

  def sort_string(str) do
    str
      |> String.downcase()
      |> String.graphemes()
      |> Enum.sort()
  end
end

IO.inspect(Anagram.anagrams_for("listen", ["enlists", "google", "inlets", "banana"]))
