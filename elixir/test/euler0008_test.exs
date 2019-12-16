defmodule Euler.E0008Test do
  use ExUnit.Case, async: true

  setup_all _input do
    {:ok, number: Euler.E0008.input()}
  end

  test "EXAMPLE e008", input do
    assert Euler.E0008.n_adjacent_max(4, input[:number], 0) == 5832
  end

  test "ANSWER e008", input do
    assert Euler.E0008.n_adjacent_max(13, input[:number], 0) == 23514624000
  end
end
