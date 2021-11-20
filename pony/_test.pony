use "ponytest"

actor Main is TestList
  new create(env: Env) =>
    PonyTest(env, this)

  fun tag tests(test: PonyTest) =>
    test(_TestOne)
    test(_TestTwo)

class iso _TestOne is UnitTest
  fun name(): String => "multiples/One"

  fun apply(h: TestHelper) =>
    h.assert_eq[USize](23, One.sum_multiples(10))
    h.assert_eq[USize](233168, One.sum_multiples(1000))


class iso _TestTwo is UnitTest
  fun name(): String => "multiples/Two"

  fun apply(h: TestHelper) =>
    h.assert_eq[USize](4613732, Two.sum_even_fibs())
