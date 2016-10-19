defmodule MyList do
  def length([]),          do: 0
  def length([head|tail]), do: 1 + len(tail)
end
