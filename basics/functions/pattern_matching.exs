handle_result = fn
  {:ok, result} -> IO.puts("Handling result: #{result}")
  {:ok, _} -> IO.puts("This will never run")
  {:error} -> IO.puts("An error has occurred! Please try again")
end

IO.inspect(handle_result.({:ok, "Hello"}))
IO.inspect(handle_result.({:ok, 2}))
IO.inspect(handle_result.({:error}))
