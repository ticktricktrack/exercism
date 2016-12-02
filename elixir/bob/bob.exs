defmodule Bob do
  def hey(remark) do
    cond do
      !Regex.match?(~r/\w/, remark)    -> "Fine. Be that way!"
      String.ends_with?(remark, "?")   -> "Sure."
      remark == String.upcase(remark)  && Regex.match?(~r/[A-ZД]/, remark) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
