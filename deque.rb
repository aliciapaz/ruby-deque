class Node
  attr_accessor :value, :next_node, :prev_node
  
  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

class Deque
  attr_reader :first, :last

  def initialize
    @first = nil
  end

  def pushFront(number)
    @first = Node.new(number, @first, nil)
    @last = @first if @last.nil?
    @first.next_node.prev_node = @first if @first.next_node
  end
    
  def pushBack(number)
    pushFront(number) if @first == nil
    @last.next_node = Node.new(number, nil,@last)
    @last = @last.next_node
  end

  def popFront
    if @last == @first
      @first = nil
      @last = @first
      return
    end
    @first = @first.next_node
    @first.prev_node = nil unless @first.nil?
  end

  def popBack
    return popFront if @last == @first
    @last = @last.prev_node
    @last.next_node = nil unless @last.nil?
  end

  def topFront
    @first.value if !@first.nil?
  end

  def topBack
    @last.value if !@last.nil?
  end

  def is_empty?
    @first.nil?
  end
end