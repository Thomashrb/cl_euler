defmodule Euler.E0008 do
  # The four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.
  # Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

  require File
  import Integer
  import Enum

  def input do
    File.read!("input/0008.txt")
    |> String.trim()
    |> String.to_integer()
    |> digits
  end

  def n_adjacent_max(_, [], max) do
    max
  end

  def n_adjacent_max(n, list, max) do
    product = take(list, n) |> reduce(fn x, acc -> x * acc end)
    [_head | remaining] = list

    if product > max do
      n_adjacent_max(n, remaining, product)
    else
      n_adjacent_max(n, remaining, max)
    end
  end
end
