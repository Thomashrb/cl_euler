defmodule Euler.E0007 do
  # By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
  # What is the 10 001st prime number?
  import Enum

  def nth_prime(primelist, n) do
    primelist
    |> take(n)
    |> List.last
  end

end
