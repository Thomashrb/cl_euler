defmodule Euler.E0002 do
  require Integer
  # Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
  # By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

  def fib(1) do
    1
  end

  def fib(2) do
    2
  end

  # NOTE: non tailcall
  def fib(n) do
    fib(n - 1) + fib(n - 2)
  end

  def sum_fibs(fibn) do
    list = for n <- 1..fibn, Integer.is_even(fib n), do: (fib n)
    Euler.Utils.sum_list(list)
  end
end
