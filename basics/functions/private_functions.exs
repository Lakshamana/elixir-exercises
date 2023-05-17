defmodule Greeter1 do
  defp phrase, do: "Hello, "
  def hello(name), do: phrase() <> name
end

IO.puts(Greeter1.hello("John"))
# IO.puts(Greeeter1.phrase)  # this will raise an error
