defmodule Mix.Tasks.Hello do
  @moduledoc "The hello mix task: `mix help hello`"
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function"
  def run(_) do
    # Start our application
    Hello.say()
  end
end
