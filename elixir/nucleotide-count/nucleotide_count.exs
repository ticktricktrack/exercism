defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  def count(dna, base) do
    Enum.count(dna, fn x -> x == base end)
  end

  def histogram(dna) do
    Map.new(@nucleotides, fn base -> { base, count(dna, base)} end)
  end
end
