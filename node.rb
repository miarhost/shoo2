class Node 
	
  def initialize(array, target)
    @array = array
    @target = target
  end

  def find_sum
    number = 0
    @result = Array.new
    for i in @array
      number = @target - i
      loop do
     	  i+=1
     	  break if  i == number
      end
      k = @target - number
      @result << @array.index(k)
      @result << @array.index(i)
      pp @result
      puts "Value is not found" if @result.include?(nil)
      return @result
    end
  end
end

#testing cases
Node.new([2, 7, 11, 15],9).find_sum
Node.new([2,1,233,112,0,24],28).find_sum
Node.new([3,117,21,25,1,11,30,9,2], 33).find_sum
