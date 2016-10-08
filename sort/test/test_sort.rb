require 'minitest/autorun'
require 'sort'

class TestSort < Minitest::Test
  
  def test_that_will_sort_an_array
    arr = [5, 1, 2, 4, 3]
    assert_equal([1, 2, 3, 4, 5], Exercise::sort(arr))
  end

  def test_that_will_work_for_single_element_array
    arr = [5]
    assert_equal([5], Exercise::sort(arr))
  end

  def test_that_will_work_for_empty_array
    arr = []
    assert_equal([], Exercise::sort(arr))
  end

end
