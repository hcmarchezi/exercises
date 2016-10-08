module Exercise
  public
  def self.binary_search(arr, word)
    self.recursive_binary_search(arr, word, 0, arr.length - 1)
  end

  private
  def self.recursive_binary_search(arr, word, start_index, end_index)

    if (start_index > end_index)
      return -1
    end

    mid_index = (start_index + end_index) / 2
    mid_word = arr[mid_index]
    
    if (word == mid_word)
      return mid_index
    elsif (word > mid_word)
      return recursive_binary_search(arr, word, mid_index+1, end_index)
    else
      return recursive_binary_search(arr, word, start_index, mid_index-1)
    end
    
  end
end
