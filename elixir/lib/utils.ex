defmodule Euler.Utils do
  def sum_list([]) do
    0
  end

  def sum_list([h | t]) do
    h + sum_list(t)
  end

  def is_prime(num) when num <= 1 do
    false
  end

  def is_prime(num) when num == 2 or num == 3 do
    true
  end

  # Inefficient because it does not break
  def is_prime(num) do
    primes = for x <- 2..Integer.floor_div(num, 2), rem(num, x) == 0, do: x
    length(primes) == 0
  end

  def doprimes(range) do
    for x <- range, is_prime(x), do: x
  end

  def square(i) do
    i * i
  end
end
