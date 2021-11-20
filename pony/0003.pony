 // The prime factors of 13195 are 5, 7, 13 and 29.
 // What is the largest prime factor of the number 600851475143 ?

use "math"
use "collections"

primitive Three
  fun max_prime_fac(num: USize = 600851475143): USize =>
    _prime_facs(num).fold[USize]({(a, e) => if e > a then e else a end}, 0)

  fun _prime_facs(num: USize, prime_cap: USize = 7000): List[USize] =>
    let facs: Array[USize] iso = []

    for i in Range(2, prime_cap) do
      if ((num % i) == 0) and IsPrime[USize](i) then
        facs.push(i)
      end
    end

    List[USize].from(consume facs)
