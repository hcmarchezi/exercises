module Exercise

  public
  def self.sort(arr)

    # stop criterias
    return [] if arr.empty?
    return arr if arr.length == 1
    return arr if arr.length == 2 && arr[0] <= arr[1]

    # other cases
    pivot = arr[arr.length/2]
    smaller_than_pivot = arr.select { |item| item <= pivot }
    bigger_than_pivot = arr.select { |item| item > pivot }

    left = self.sort(smaller_than_pivot)
    right = self.sort(bigger_than_pivot)

    return left.concat right

  end
end
