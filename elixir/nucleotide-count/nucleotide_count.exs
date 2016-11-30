defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  def count([], _), do: 0
  def count([base|tail], base) do
    1 + count(tail, base)
  end

  def count([_|tail], base) do
    count(tail, base)
  end

  def histogram(dna) do
    Map.new(@nucleotides, fn base -> { base, count(dna, base)} end)
  end
end
