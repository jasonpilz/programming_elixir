defmodule MyList do
  def max([]),              do: nil
  def max([ head | tail ]), do: _max(tail, head)

  defp _max([], value),     do: value
  defp _max([ head | tail ], value) when value >= head, do: _max(tail, value)
  defp _max([ head | tail ], value) when value <= head, do: _max(tail, head)
end
