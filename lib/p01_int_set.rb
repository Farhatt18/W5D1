
class MaxIntSet

attr_reader :max
attr_accessor :store
  def initialize(max)
    @max = max
    @store = Array.new(max,false)
  end

  def insert(num)
    raise "Out of bounds" unless num.between?(0, max)
    @store[num] = true
  end

  def remove(num)
    @store[num] = false 
  end

  def include?(num)
    @store[num]
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end

class IntSet

  attr_accessor :store, :num_buckets
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    return false unless @store[num] == true
    return true
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet

  attr_accessor :store, :count


  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)

  index = num % @store.length

    # if @store[index].include?(num)
    #   store[num] << num
    #   count += 1
    # end

    # if count > @store.length
    #   @store.resize!
    # end
  end

  def remove(num)
    if include?(num)
      @store[num].pop
      count -= 1
    end
  end

  def include?(num)
    @store[num].include?(num)
  end

  private

  def num_buckets
    @store.length
  end

  def resize!   
  #   num_new_buckets = @store.length
  #   new_size = @store.length * 2 
  #   stores = self.store

  # num_new_buckets.times {@store << Array.new}
  #   stores.flatten.each do |el| 
  #     new_idx = el % new_size
  #     @store[new_idx] << el
  #   end
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end