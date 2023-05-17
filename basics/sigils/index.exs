# char list
IO.puts(~c/2 + 7 = #{2 + 7}/)
IO.puts(~C/2 + 7 = \#{2 + 7}/)


# regexes
re = ~r/elixir/  # use flag /i to ignore case
IO.puts("Elixir" =~ re)
IO.puts("elixir" =~ re)

IO.puts(Regex.split(~r/_/, "1_000_000") |> Enum.join("."))

# string
IO.puts(~s/the fox jumps over\\ the lazy dog/)
IO.puts(~S/the fox jumps over\\ the lazy dog/)

# word list
IO.inspect(~w/the fox jumps over the lazy dog/ )
IO.inspect(~W/the fox jumps #{'o'}ver the lazy dog/ )


# NaiveDateTime (without timezone)
IO.inspect(NaiveDateTime.from_iso8601("2015-01-01T00:00:00Z") == {:ok, ~N[2015-01-01 00:00:00]})

# DateTime (with timezone)
IO.inspect(DateTime.from_iso8601("2015-01-01T00:00:00-0600") == {:ok, ~U[2015-01-01 06:00:00Z], -21600})
