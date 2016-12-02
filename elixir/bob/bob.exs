defmodule Bob do
  def hey(remark) do
    cond do
      silent?(remark)   -> "Fine. Be that way!"
      question?(remark) -> "Sure."
      shouting?(remark) -> "Whoa, chill out!"
      true              -> "Whatever."
    end
  end

  def silent?(remark) do
    !Regex.match?(~r/\w/, remark)
  end

  def question?(remark) do
    String.ends_with?(remark, "?")
  end

  def shouting?(remark) do
    remark == String.upcase(remark)  && Regex.match?(~r/[A-ZД]/, remark)
  end
end
