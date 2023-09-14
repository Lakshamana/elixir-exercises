defmodule ExampleError do
  defexception message: "an example error has occurred"
end

try do
  raise ExampleError
rescue
  e in ExampleError -> IO.puts("Error: #{inspect(e)}")
end
