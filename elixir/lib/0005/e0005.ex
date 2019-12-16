defmodule Euler.E0005 do
  # 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  # What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  import Enum

  def is_divisible(num, range) do
    all?(range, fn i -> rem(num, i) == 0 end)
  end

  def smallest_divisible(numbers, range) do
    filter(numbers, fn n -> is_divisible(n, range) end) |> min
  end
end
