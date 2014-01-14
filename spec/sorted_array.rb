class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(internal_arr= [], input_arr=[])
    @internal_arr = internal_arr
    @input_arr = input_arr
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    @internal_arr.each do |x|
      if x < new_ele
        @internal_arr.push(new_ele)
        break
      else
        @internal_arr.unshift(new_ele)
        break
      end
    end
    #@internal_arr.push(new_ele)
    # raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    mid_index = @internal_arr/2
    return @internal_arr[index]
     # raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    
    if @internal_arr.empty?
      return 0
    elsif
      i = 0
      @internal_arr.each do |x|
        if x < target
          i += 1
        else
          return i
        end
      end

      return i

    end
  end

    # raise NotImplementedError.new("You need to implement the first_larger_index method!")
  def index(target)
    raise NotImplementedError.new("You need to implement the index method!")
  end
end
