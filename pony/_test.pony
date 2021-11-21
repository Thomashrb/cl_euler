use "ponytest"

actor Main is TestList
  new create(env: Env) =>
    PonyTest(env, this)

  fun tag tests(test: PonyTest) =>
    test(_TestOne)
    test(_TestTwo)
    test(_TestThree)
    test(_TestFour)

class iso _TestOne is UnitTest
  fun name(): String => "multiples/One"

  fun apply(h: TestHelper) =>
    h.assert_eq[USize](23, One.sum_multiples(10))
    h.assert_eq[USize](233168, One.sum_multiples(1000))


class iso _TestTwo is UnitTest
  fun name(): String => "multiples/Two"

  fun apply(h: TestHelper) =>
    h.assert_eq[USize](4613732, Two.sum_even_fibs())


class iso _TestThree is UnitTest
  fun name(): String => "multiples/Three"

  fun apply(h: TestHelper) =>
    h.assert_eq[USize](6857, Three.max_prime_fac())


class iso _TestFour is UnitTest
  fun name(): String => "multiples/Four"

  fun apply(h: TestHelper) =>
    h.assert_eq[USize](906609, Four.max_palindrome())
