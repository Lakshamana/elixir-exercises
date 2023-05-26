str = <<104, 101, 108, 108, 111>>
IO.inspect(String.upcase(str))


# IO.inspect('hełło' <> <<0>>)  # error
IO.inspect("hełło" <> <<0>>)
IO.inspect(?z)
IO.inspect(?Z)

string = "\u0061\u0301"

IO.inspect(string)
IO.inspect(String.codepoints(string))
IO.inspect(String.graphemes(string))

# string functions
IO.inspect(String.length("hello"))
IO.inspect(String.upcase("hello"))
IO.inspect(String.replace("hell@/o", ~r/[^\w\d\s]/, ""))
IO.inspect(String.replace("hell@/o", "@", ""))
IO.inspect(String.duplicate("Oh my ", 3))
IO.inspect(String.reverse("hello"))
IO.inspect(
  String.split("Hello World", " ")
    |> Enum.reverse
    |> Enum.join(" ")
)
