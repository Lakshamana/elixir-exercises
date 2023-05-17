defmodule MySigils do
  def sigil_p(str, []), do: String.upcase(str)
end

defmodule UseMySigils do
  import MySigils  # importing modules inside other modules
  def main, do: IO.inspect(~p/lakshamana/)
end

UseMySigils.main
