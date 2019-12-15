defmodule Euler.E0003 do
  # The prime factors of 13195 are 5, 7, 13 and 29.
  # What is the largest prime factor of the number 600851475143 ?

  # Base case 1
  def factorize(0, _, factors) do
    factors
  end

  # Base case 2
  def factorize(_, [], factors) do
    factors
  end

  # Do work
  def factorize(rem, [current_fac | rem_facs], factors) when rem(rem, current_fac) == 0 do
    factorize(div(rem, current_fac), rem_facs, [current_fac | factors])
  end

  # Move to next number
  def factorize(rem, [_ | rem_facs], factors) do
    factorize(rem, rem_facs, factors)
  end
end
