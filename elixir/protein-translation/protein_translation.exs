defmodule ProteinTranslation do
  @proteins %{
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UGG" => "Tryptophan",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }


  @spec of_rna(String.t()) :: { atom,  list(String.t()) }
  def of_rna(rna) do
    { :ok, lookup_rna(rna) }
  end

  @spec of_codon(String.t()) :: { atom, String.t() }
  def of_codon(codon) do
    { :ok, lookup(codon) }
  end

  def lookup(codon) do
    @proteins[codon]
  end

  def lookup_rna(rna) do
    to_charlist(rna)
    |> Enum.chunk(3)
    |> Enum.map(&lookup(to_string(&1)))
  end
end
