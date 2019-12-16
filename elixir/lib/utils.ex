defmodule Euler.Utils do
  import Enum
  import Integer

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

  def is_prime(num) do
    not any?(2..floor_div(num, 2), fn x -> rem(num, x) == 0 end)
  end

  def doprimes(range) do
    for x <- range, is_prime(x), do: x
  end

  def square(i) do
    i * i
  end
end
