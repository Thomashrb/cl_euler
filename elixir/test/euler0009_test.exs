defmodule Euler.E0009Test do
  use ExUnit.Case, async: true
  require List

  test "EXAMPLE e009" do
    assert Euler.E0009.find_triplet({2,3,4}, 12) |> List.first() == {3,4,5}
  end

  test "ANSWER e009" do
    assert Euler.E0009.find_triplet({200,300,400}, 1000) |> List.first() == {200,375,425}
    assert 200*375*425 == 31875000
  end
end
