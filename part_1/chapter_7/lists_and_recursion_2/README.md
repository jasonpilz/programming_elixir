# Your Turn: ModulesAndFunctions-2

Write a `max(list)` that returns the element with the maximum value in the list.

## Implementation

```elixir
defmodule MyList do
  def max([]),              do: nil
  def max([ head | tail ]), do: _max(tail, head)

  defp _max([], value),     do: value
  defp _max([ head | tail ], value) when value >= head, do: _max(tail, value)
  defp _max([ head | tail ], value) when value <= head, do: _max(tail, head)
end

iex(1)> MyList.max([2, 3, 4, 56, 43, 32, 9])
56
```
