defmodule Euler.E0001 do
  # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  # Find the sum of all the multiples of 3 or 5 below 1000.

  alias Euler.Utils

  def is_multiple(ofnum) do
    rem(ofnum, 3) == 0 or
    rem(ofnum, 5) == 0
  end

  def multiple_sum(below) do
    list = for x <- 1..(below - 1), is_multiple(x), do: x
    Utils.sum_list(list)
  end
end
