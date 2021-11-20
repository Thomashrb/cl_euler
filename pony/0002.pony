// Each new term in the Fibonacci sequence is generated by adding the previous
// two terms. By starting with 1 and 2, the first 10 terms will be:
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// By considering the terms in the Fibonacci sequence whose values do not
// exceed four million, find the sum of the even-valued terms.


use "collections"

primitive Two
  fun sum_even_fibs(below: USize = 4_000_000): USize =>
    even_fibs(below).fold[USize]({(a, n) => a + n }, 0)

  // NOTE:
  // 1. --debug builds does not perform
  // tail call optimization so for loop
  // is chosen here
  // 2. assume input is higher than or equal to 2
  // 3. there exists a fib class in std lib
  fun even_fibs(below: USize): List[USize] =>
    let e_fibs: Array[USize] iso = [2]
    var fib_last: USize = 1
    var fib_this: USize = 2
    while fib_this < below do
      fib_last = fib_this = fib_last + fib_this
      if fib_this.rem(2) == 0 then
        e_fibs.push(fib_this)
      end
    end
    List[USize].from(consume e_fibs)
