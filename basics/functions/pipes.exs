# foo(bar(baz(new_function(other_function())))) === other_function() |> new_function() |> baz() |> bar() |> foo()

IO.puts("Hello, World!" |> String.upcase |> String.reverse)
IO.puts("Hello, World!" |> String.reverse |> String.upcase)

IO.puts(String.reverse(String.upcase("Hello, World!")))

IO.puts("elixir" |> String.ends_with?("ixir"))
