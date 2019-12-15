defmodule Euler.E0004 do
  # A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
  # Find the largest palindrome made from the product of two 3-digit
  import Integer
  import Enum

  def is_palindrome(list) do
    palin_zip = take(zip(list, reverse(list)), div(length(list),2))
    all?(palin_zip, fn {a,b} -> a == b end)
  end

  def find_palinproduct(range) do
    products = flat_map(range, fn a -> map(range, fn b -> a*b end) end)
    |> sort
    |> dedup
    |> map(fn p -> digits(p) end)

    filter(products, fn pd -> is_palindrome(pd) end)
    |> map(fn pd -> undigits(pd) end)
  end

end
