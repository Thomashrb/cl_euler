// A palindromic number reads the same both ways. The largest palindrome
// made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit

use "collections"

primitive Four
  fun max_palindrome(): USize =>
    let palindromes: Array[USize] = []

    for i in Range(100, 999) do
      for y in Range(100, 999) do
        let num = y * i
        if _is_palindrome(num) then palindromes.push(num) end
      end
    end

    List[USize]
    .from(palindromes)
    .fold[USize]({(acc, e) => if e > acc then e else acc end},0)

  fun _is_palindrome(num: USize): Bool =>
    let s_num: String iso = num.string()
    let num_length: USize = s_num.size()

    (let f: String iso, let l: String iso) = (consume s_num).chop(num_length / 2)
    // This does not account for non even length palindrome but works here
    // One way of solving it would be to trim them to the same length before
    // comparing or using take(num_length / 2) from the string and the reversed
    // string.
    f == l.reverse()
