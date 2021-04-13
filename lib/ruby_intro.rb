# When done, submit this entire file to the autograder.

# Part 1
# This method takes an input of an array, and returns the sum of all elements in the array
def sum(array)
  s = 0
  
  if array.length > 0
    array.each do |d|
      s += d
    end
    return s
  else return 0
  end
end

# This method takes an array of integers as an input and returns the sum of the two largest elements in the array
def max_2_sum(array)
  max1 = 0
  max2 = 0
  sum = 0
  
  if array.length > 1
    max1 = array.sort[-1]
    max2 = array.sort[-2]
    sum = max1 + max2
    return sum
  else if array.length == 1
    return array
      else
        return 0
      end
  end
end

# This method takes an array of integers as well as an additional integer and returns true if any two elements in the array add to n.
def sum_to_n?(array, n)
  result = false
  if array.length > 1
    for i in 1..array.length - 1
      for j in 0..i - 1
        if array[j] + array[i] == n
          result = true
          break
        end
      end
    end
  end
end

# Part 2

# This method concatenates the word hello with name input variable
def hello(name)
  puts "hello #{name}"
end

# This method checks to see if the inputted string begins with a consonant
def starts_with_consonant?(s)
  if  /^[aeiou\W]/i.match(s) == nil
    return true
  else
    return false
  end
end

# This method checks if the input is a multiple of 4.  True if so, False if not.
def binary_multiple_of_4?(s)
  if  /^[01]*(00)$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    # Raise exception error if needed
    if @isbn.empty? || @price <= 0
      raise ArgumentError
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
  
  
