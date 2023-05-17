# by default it will import all functions and macros from the module
import List, only: [last: 1]  # may use :except too

IO.puts(last([1, 2, 3, 4]))
# IO.puts(first([1, 2, 3, 4]))  # error -- import not found

# ---- import macros --------
# defmodule ExampleRequire do
#   require SuperMacros
#   SuperMacros.do_stuff
# end


# ---- import functions --------
defmodule ExampleUse do
  defmacro __using__(_opts) do
    quote do
      def hello(name), do: "Hello, #{name}"
    end
  end
end

defmodule ExampleUseTest do
  use ExampleUse
end

IO.puts(ExampleUseTest.hello("John"))
