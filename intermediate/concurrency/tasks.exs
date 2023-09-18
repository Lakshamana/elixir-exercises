defmodule Example do
  def double_async(n) do
    :timer.sleep(2000)
    2 * n
  end

  def double_async_wpp do
    fn -> double_async(2000) end
  end
end

# task = Task.async(Example, :double_async, [10])
task = Task.async(Example.double_async_wpp)

IO.inspect Task.await(task)
IO.puts(">> done!")
