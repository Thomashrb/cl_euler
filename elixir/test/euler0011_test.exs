defmodule Euler.E0011Test do
  use ExUnit.Case, async: true

  require Enum

  setup_all _input do
    {:ok, list: Euler.E0011.input()}
  end

  test "right", input do
    assert Euler.E0011.right_group(4, {0,0}, input[:list]) == [1, 70, 54, 71]
    assert Euler.E0011.right_group(4, {1,0}, input[:list]) == [70, 54, 71, 83]
    assert Euler.E0011.right_group(4, {2,2}, input[:list]) == [36, 41, 72, 30]
  end

  test "up", input do
    assert Euler.E0011.up_group(4, {0,0}, input[:list]) == [1, 20, 20, 4]
    assert Euler.E0011.up_group(4, {0,1}, input[:list]) == [20, 20, 4, 88]
    assert Euler.E0011.up_group(4, {19,0}, input[:list]) == [48, 54, 16, 36]
  end

  test "diag right", input do
    assert Euler.E0011.right_diagonal_group(4, {0,0}, input[:list]) == [1, 73, 36, 73]
  end

  test "diag left", input do
    assert Euler.E0011.left_diagonal_group(4, {3,0}, input[:list]) == [71, 35, 69, 4]
  end

  test "ANSWER e0011", input do
    assert Euler.E0011.max_grid_product(4, input[:list]) == 70600674
  end
end
