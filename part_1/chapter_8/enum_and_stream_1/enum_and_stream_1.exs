defmodule MyEnum do
  def all?(col, func),                  do: _all?(col, func, true)
  defp _all?([], _func, res),           do: res
  defp _all?([head | tail], func, res), do: _all?(tail, func, res && func.(head))


  def each([], _func),             do: []
  def each([ head | tail ], func), do: [ func.(head) | each(tail, func) ]

  def filter([], _func),            do: []
  def filter([ head | tail ], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end
end
