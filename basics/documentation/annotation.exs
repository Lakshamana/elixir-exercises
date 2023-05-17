# comments like this

# documenting modules

defmodule Greeter do
  @moduledoc """
  Provides a funcion to `hello/1` a person.
  """

  @doc """
  Prints a hello message.

  ## Parameters
  - `name` is the name of the person to greet.

  ## Examples
    iex> Greeter.hello("lakshamana")
    "Hello, lakshamana"

    iex> Greeter.hello("Peter")
    "Hello, Peter"
  """
  @spec hello(String.t()) :: String.t()  # type annotation
  def hello(name) do
    "Hello, #{name}"
  end
end
