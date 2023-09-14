try do
  raise "Oh, no!"
rescue
  e in RuntimeError -> IO.puts("Error: #{inspect(e)}")
end

try do
  opts
    |> Keyword.fetch!(:file)
    |> File.read!()
rescue
  e in RuntimeError -> IO.puts("Error: #{inspect(e)}")
  e in File.Error -> IO.puts("unable to read file")
after
  IO.puts("after")
end

{:ok, file} = File.open("example.json")

try do
  # Do hazardous work
after
  File.close(file)
end
