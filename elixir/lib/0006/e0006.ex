defmodule Euler.E0006 do

  # The sum of the squares of the first ten natural numbers is,
  # 1^2 + 2^2 + ... + 10^2 = 385
  # The square of the sum of the first ten natural numbers is,
  # (1 + 2 + ... + 10)^2 = 55^2 = 3025
  # Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
  # Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

  import Enum
  import Euler.Utils

  def sum_square(range) do
    map(range, fn i -> square(i) end) |> sum
  end

  def square_sum(range) do
    sum(range) |> square
  end

  def sum_difference(range) do
    square_sum(range) - sum_square(range)
  end
end
