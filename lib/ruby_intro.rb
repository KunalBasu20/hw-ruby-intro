# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |n| 
    sum += n
  end
  return sum
end

def max_2_sum arr
  sum = 0
  arr.sort! { |x, y| x <=> y}
  sum = sum(arr.pop(2))

  return sum
end

def sum_to_n? arr, n
  bool = false

  x = arr.length
  x.times do 
    current = arr.pop
    arr.each do |elt|
      if (current + elt) == n
        bool = true 
      end 
    end
  end
  return bool
end

# Part 2

def hello(name)
  str = "Hello, "
  return str.concat(name)
end

def starts_with_consonant? s
  # vowels = ["A", "E", "I", "O", "U"]
  # str = ""
  # unless vowels.include? 
  #   return true
  # else 
  #   return false
  # end

  puts s
  puts s.chr 
  puts s.chr.capitalize
  puts "-----------------"
  if s.chr.capitalize.match(/([^A-Z])[AEIOU]/) 
    # Issue is with the regex (how to create a union)
    return false 
  else  
    return true 
  end
end

def binary_multiple_of_4? s
  puts "------------"
  bool = false
  # r = s.unpack("B*").first.to_i(2)
  puts s
  puts s.to_i(2)
  puts "-----------"
  s = ""
  if s.match(/[^01]/)
    bool = false
  elsif s.to_i(2) % 4 == 0
    bool = true
  end 

  return bool 

end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    elsif price <= 0.0
        raise ArgumentError.new("Price cannot be negative")
    end
    @isbn = isbn
    @price = price 
  end
  #The Getter Method
  def isbn
    @isbn
  end

  #The Setter Method
  def isbn=(value)
    if value.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    else
      @isbn = value
    end
  end

  #The Getter Method
  def price 
    @price
  end

  #The Setter Method
  def price= (p_value)
    if p_value <= 0
      raise ArgumentError.new("Price cannot be negative")
    else
      @price = p_value
    end
  end
  
  def price_as_string 
    formatted = '%.2f' % self.price
    return "$" + "#{formatted}"
  end 



end
