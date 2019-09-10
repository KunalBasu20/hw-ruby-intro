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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
