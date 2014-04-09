class MySet

  attr_accessor :counter, :elements

  def initialize
    @counter = 0
    @elements = []
  end

  def empty?
    if counter == 0
      true
    else
      false
    end
  end

  def add(data)
    unless include?(data)
      elements[counter] = data
      self.counter = counter + 1
      elements
    else
      raise CannotAddSameData
    end
  end

  def size
    counter
  end

  def include?(data)
    elements.each do |elem|
      if elem == data
        return true
      end
    end
    return false
  end

end

class CannotAddSameData < StandardError
end