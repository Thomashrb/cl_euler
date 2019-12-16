defmodule Euler.E0006Test do
  use ExUnit.Case, async: true

  test "EXAMPLE e006" do
    assert Euler.E0006.sum_square(1..10) == 385
    assert Euler.E0006.square_sum(1..10) == 3025
  end

  test "ANSWER e006" do
    assert Euler.E0006.sum_difference(1..100) == 25164150
  end
end
