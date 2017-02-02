defmodule Words do
  @spec count(String.t) :: map
  def count(sentence) do
    String.downcase(sentence)
    |> String.replace(~r/[^\w-]|_/u, " ")
    |> String.split
    |> Enum.group_by(&(&1))
    |> Enum.map(fn({word, counts}) -> { word, length(counts) } end)
    |> Enum.into(%{})
  end
end
