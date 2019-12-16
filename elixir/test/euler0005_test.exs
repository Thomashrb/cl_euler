defmodule Euler.E0005Test do
  use ExUnit.Case, async: true

  # 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  test "EXAMPLE e005" do
    assert Euler.E0005.smallest_divisible(1..2620, 1..10) == 2520
  end

  test "ANSWER e005" do
    assert Euler.E0005.smallest_divisible(230_000_000..233_000_000, 1..20) == 232_792_560
  end
end
