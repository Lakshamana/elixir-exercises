defmodule Greeter do
  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "

  def hello(name, lang \\ "en")

  def hello(name, lang) when is_binary(name) do
    phrase(lang) <> name
  end

  def hello(names, lang) when is_list(names) do
    names = Enum.join(names, ", ")
    hello(names, lang)
  end
end

IO.puts Greeter.hello "John"
IO.puts Greeter.hello(["John", "Jane"])

IO.puts Greeter.hello("John", "es")
IO.puts Greeter.hello(["John", "Jane"], "es")

defmodule Factorial do
  def of(n) when n < 0, do: raise "n must be greater than 0"
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end

IO.puts Factorial.of(0)
IO.puts Factorial.of(5)
IO.puts Factorial.of(-1)
