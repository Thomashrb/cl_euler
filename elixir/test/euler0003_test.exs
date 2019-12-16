defmodule Euler.E0003Test do
  use ExUnit.Case, async: true
  alias Euler.Utils

  setup_all _primes do
    {:ok, list: Utils.doprimes(2..7000)}
  end

  test "EXAMPLE e003", primes do
    assert Euler.E0003.factorize(13195, primes[:list], []) == [29, 13, 7, 5]
  end

  test "ANSWER e003", primes do
    max_fac = Euler.E0003.factorize(600851475143, primes[:list], [])
    |> Enum.max()
    assert max_fac == 6857
  end
end
