class Node

  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(data)
    if data >= @key
      if @right
        insert(data)
      else
        @right = Node.new(data)
      end
    else
      if @left

      end
    end
  end
end
