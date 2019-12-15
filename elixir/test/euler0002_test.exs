defmodule Euler.E0002Test do
  use ExUnit.Case, async: true

  # NOTE: from the problem
  # fib(32) = 3_524_578 < 4_000_000
  test "ANSWER e002" do
    assert Euler.E0002.sum_fibs(32) == 4613732
  end
end

