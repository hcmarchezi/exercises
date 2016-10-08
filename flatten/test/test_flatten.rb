require 'minitest/autorun'
require 'flatten'

class TestFlatten < Minitest::Test
  def test_that_return_another_array
    arr = []
    refute_equal arr.__id__, Exercise::flatten(arr).__id__
  end

  def test_that_flatten_a_simple_array
    assert_equal [1, 2, 3, 4, 5], Exercise::flatten([1, 2, 3, 4, [5]])
  end

  def test_that_flatten_an_array
    arr = [1, [2], [3, 4, [5]]]
    assert_equal [1, 2, 3, 4, 5], Exercise::flatten(arr)
  end
end

