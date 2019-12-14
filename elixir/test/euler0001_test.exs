defmodule Euler.E0001Test do
  use ExUnit.Case, async: true

  test "is_multiple detects 3 and 5 mutliples" do
    assert Euler.E0001.is_multiple(3) == true
    assert Euler.E0001.is_multiple(5) == true
    assert Euler.E0001.is_multiple(3*5) == true
    assert Euler.E0001.is_multiple(5*5) == true
  end

  test "sum_multiples from example" do
    assert Euler.E0001.multiple_sum(10) == 23
  end

  test "ANSWER e001" do
    assert Euler.E0001.multiple_sum(1000) == 233168
  end
end
