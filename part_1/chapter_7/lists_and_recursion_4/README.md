# Your Turn: ModulesAndFunctions-4

Write a function `MyList.span(from, to)` that returns a list of the numbers from
`from` up to `to`

## Implementation

```elixir
defmodule MyList do
  def span(from, to, res \\ []), do: _span(from , to, res)

  defp _span(from, to, res) when to < from, do: res
  defp _span(from, to, res), do: _span(from, to - 1, [ to | res ])
end

iex(1)> MyList.span(5, 15)
[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
```
