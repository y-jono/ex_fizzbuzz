defmodule ExFizzbuzz do
#  def fizzbuzz(n) do
#    # cond do
#    #   rem(n, 15) == 0 -> "fizzbuzz"
#    #   rem(n, 5) == 0 -> "buzz"
#    #   rem(n, 3) == 0 -> "fizz"
#    #   true -> to_string(n)
#    # end
#
#    case n do
#      _ when rem(n, 15) == 0 -> "fizzbuzz"
#      _ when rem(n, 5) == 0 -> "buzz"
#      _ when rem(n, 3) == 0 -> "fizz"
#      true -> to_string(n)
#    end
#  end

  def fizzbuzz(n) when rem(n, 15)== 0, do: "fizzbuzz" 
  def fizzbuzz(n) when rem(n, 5) == 0, do: "buzz"      
  def fizzbuzz(n) when rem(n, 3) == 0, do: "fizz"      
  def fizzbuzz(n), do: to_string(n)
end
