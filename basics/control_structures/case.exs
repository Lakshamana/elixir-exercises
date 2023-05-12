x = case {:ok, "Hello World"} do  # you may pass a case return value to a variable
  {:ok, result} -> result
  {:error} -> "Uh oh!"
  _ -> "Catch all"
end

IO.inspect(x)


# case :even do  # will raise an error because _ is missing
#   :odd -> "Odd"
# end

pie = 3.14

x = case "cherry pie" do
  ^pie -> "Not so tasty"
  pie -> "I bet #{pie} is tasty"
end

IO.inspect(x)

# Guard clauses
# for allowed expressions in guard clauses: https://hexdocs.pm/elixir/guards.html#list-of-allowed-expressions
x = case {1, 2, 3} do
  {1, x, 3} when x > 0 -> "Will match"
  _ -> "Won't match"
end

IO.inspect(x)
