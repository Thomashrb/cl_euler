defmodule Euler.E0009 do
  # A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
  # a^2 + b^2 = c^2
  # For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
  # There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  # Find the product abc.

  import Euler.Utils

  def find_triplet({a, b, c}, target_sum) when a < b and b < c do
    for i <- a..500,
        j <- i..500,
        k <- j..500,
        i < j and j < k and square(i) + square(j) == square(k) and i + j + k == target_sum,
        do: {i, j, k}
  end
end
