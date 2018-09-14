def flatten(array)
  results = []
  array.each do |element|
    if element.class == Array
      element.each {|value| results << value}
    else
      results << element
    end
  end
  results
end

# yes, Ruby has #flatten on Array class