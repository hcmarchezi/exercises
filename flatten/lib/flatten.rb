module Exercise
  public
  def self.flatten(arr)
    result = []

    arr.each do |item|
      if (item.class == Array)
        result = result.concat self.flatten(item)
      else
        result << item      
      end
    end    

    return result
  end

  private
  def self.is_number?(item)
    item.class.ancestors.include? Numeric
  end

end


