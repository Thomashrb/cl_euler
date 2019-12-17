defmodule Euler.E0010Test do
  use ExUnit.Case, async: true

  test "EXAMPLE e0010" do
    assert Euler.E0010.sum_primes(10) == 17
  end

  test "ANSWER e0010" do
    assert Euler.E0010.sum_primes(2_000_000) == 142913828922
  end
end
