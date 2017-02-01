defmodule Hamming do
  def hamming_distance(strandA, strandB) when length(strandA) != length(strandB) do
    { :error, "Lists must be the same length" }
  end

  @spec hamming_distance([char], [char]) :: non_neg_integer
  def hamming_distance(strandA, strandB) do
    { :ok, distance(Enum.zip(strandA, strandB) ) }
  end

  def distance(strands) do
    Enum.count(strands, fn({a, b}) -> a != b end)
  end
end
