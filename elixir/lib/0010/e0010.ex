defmodule Euler.E0010 do

  # The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
  # Find the sum of all the primes below two million.

  import Enum
  alias Euler.Utils

  def sum_primes(below) do
    Utils.doprimes(2..below) |> sum
  end
end
