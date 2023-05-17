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
