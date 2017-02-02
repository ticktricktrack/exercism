defmodule Accumulate do
  def accumulate([], _) do
    []
  end

  def accumulate([head | []], fun) do
    [fun.(head)]
  end
  
  @spec accumulate(list, (any -> any)) :: list
  def accumulate([head | tail], fun) do
    [fun.(head) | accumulate(tail, fun)]
  end
end
