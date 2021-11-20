//  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//  Find the sum of all the multiples of 3 or 5 below 1000.

use "collections"

primitive One
  fun sum_multiples(start: USize): USize =>
    multiples_below(start).fold[USize]({(a, n) => a + n }, 0)

  fun multiples_below(start: USize): List[USize] =>
    let multiples: Array[USize] iso = []
    for i in Range(2, start) do
      if (i.mod_unsafe(3) == 0) or (i.mod_unsafe(5) == 0) then
        multiples.push(i)
      end
    end
    List[USize].from(consume multiples)
