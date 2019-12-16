Defmodule Euler.E0007Test do
  use ExUnit.Case, async: true
  alias Euler.Utils

  setup_all _primes do
    {:ok, list: Utils.doprimes(2..104743)}
  end

  test "EXAMPLE e007", primes do
    assert Euler.E0007.nth_prime(primes[:list], 6) == 13
  end

  test "ANSWER e007", primes do
    assert Euler.E0007.nth_prime(primes[:list], 10_001) == 104743
  end
end
