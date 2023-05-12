result = cond do
  2 + 2 === 5 ->
    "This will not be true"
  not false === true ->
    "This will be true"
  true -> "Catch all, but unused"
end

IO.inspect(result)

result = cond do
  2 + 2 === 5 ->
    "This will not be true"
  false === true ->
    "This won't be true"
  true -> "Catch all"
end

IO.inspect(result)
