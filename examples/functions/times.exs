defmodule Times do
  # Good
  def double(n) do
    n * 2
  end

  # Better
  def double(n), do: n * 2
end
