defmodule Example do
  def listen do
    IO.puts(">> executing...")
    x = receive do
      {:ok, "hey"} -> IO.puts("Ho!")
      {:ok, "hello"} -> IO.puts("World!")
    end

    listen()
  end
end

pid = spawn(Example, :listen, [])

send(pid, {:ok, "hello"})
send(pid, {:ok, "hey"})
send(pid, {:ok, "world"})
