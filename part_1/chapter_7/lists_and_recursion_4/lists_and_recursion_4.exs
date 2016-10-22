defmodule MyList do
  def span(from, to, res \\ []), do: _span(from , to, res)

  defp _span(from, to, res) when to < from, do: res
  defp _span(from, to, res), do: _span(from, to - 1, [ to | res ])
end
