require 'minitest/autorun'
require 'binary_search'

class TestBinarySearch < Minitest::Test

  def test_that_work_on_an_empty_array
    arr = []
    assert_equal -1, Exercise::binary_search(arr, 'elem')
  end

  def test_that_work_for_not_found_item_in_array_of_one_item
    arr = generate_ordered_number_array(1)
    assert_equal -1, Exercise::binary_search(arr, arr[0] + 10)
  end

  def test_that_work_for_found_item_in_array_of_one_item
    arr = generate_ordered_number_array(1)
    assert_equal 0, Exercise::binary_search(arr, arr[0])
  end

  def test_that_work_on_not_found_item_in_array_of_many_items
    arr = generate_ordered_number_array(15)
    assert_equal -1, Exercise::binary_search(arr, arr[14] + 50)
  end

  def test_that_work_on_found_first_item_in_array_of_many_items
    arr = generate_ordered_number_array(15)
    assert_equal 0, Exercise::binary_search(arr, arr[0])
  end

  def test_that_work_on_found_last_item_in_array_of_many_items
    arr = generate_ordered_number_array(15)
    assert_equal 14, Exercise::binary_search(arr, arr[14])
  end

  def test_that_work_for_general_cases
    arr = ['apple', 'banana', 'cherry', 'dates', 'eggs', 'figs', 'grapes']
    assert_equal 2,  Exercise::binary_search(arr, 'cherry')
    assert_equal -1, Exercise::binary_search(arr, 'zebra')
  end

  def generate_ordered_number_array(size)
    (0..size).to_a
  end
end



