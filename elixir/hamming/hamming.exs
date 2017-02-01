defmodule Hamming do
  @spec hamming_distance([char], [char]) :: non_neg_integer
  def hamming_distance(strandA, strandB) do
    { :ok, distance(Enum.zip(strandA, strandB) ) }
  end

  def distance(strands) do
    Enum.count(strands, fn({a, b}) -> a != b end)
  end
end
