defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  def count(dna, base) do
    Enum.count(dna, &(&1 == base))
  end

  def histogram(dna) do
    Map.new(@nucleotides, fn base -> { base, count(dna, base)} end)
  end
end
