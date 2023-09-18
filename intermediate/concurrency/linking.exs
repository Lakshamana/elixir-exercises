defmodule Example do
  def explode, do: exit(:kaboom)
end

spawn(Example, :explode, [])

# spawn_link(fn -> exit(:kaboom) end)
# spawn_link(Example, :explode, [])

defmodule Example2 do
  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)

    spawn_link(Example2, :explode, [])

    receive do
      {:EXIT, from_pid, reason} -> IO.puts("Exited from #{inspect(from_pid)} with reason: #{reason}")
    end
  end

  def run_monit do
    spawn_monitor(Example2, :explode, [])

    receive do
      {:DOWN, _ref, :process, _pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end
end

# Example2.run
Example2.run_monit
