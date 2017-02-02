defmodule Accumulate do
  def accumulate([], _), do: []
  def accumulate([head | tail], fun) do
    [fun.(head) | accumulate(tail, fun)]
  end
end
