defmodule RotationalCipher do
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
       to_charlist(text)
    |> Enum.map(&encode(&1, shift))
    |> to_string
  end

  def encode(char, shift) when (char >= ?a) or (char >= ?z) do
    ?a + rem(char - ?a + shift, 26)
  end

  def encode(char, shift) when (char >= ?A) or (char >= ?Z) do
    ?A + rem(char - ?A + shift, 26)
  end

  def encode(char, _) do
    char
  end
end
