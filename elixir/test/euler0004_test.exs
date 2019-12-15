defmodule Euler.E0004Test do
  use ExUnit.Case, async: true
  import Enum

  test "EXAMPLE e004" do
    assert Euler.E0004.find_palinproduct(10..99) |> max == 9009
  end

  test "ANSWER e004" do
    assert Euler.E0004.find_palinproduct(100..999) |> max == 906609
  end
end
