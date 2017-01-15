# Search Array Method

def search_array(arr, int)
  new_arr = []
  arr.each do |number|
    new_arr << number 
    break if number ==  int
  end
  return new_arr.length - 1
end


# Fabonacci Numbers

def fabonacci(int)
  if int > 1
    arr = [0,1]
    (int - 2).times do
      arr << arr[-1] + arr[-2]
    end
    p arr
    elsif int == 0
    arr = [0]
    elsif int == 1
    arr = [1]
  end
  p arr[-1]
end


# fabonacci(100)[-1]


# The odd last method sorts by bringing all even numbers to the beginning of the array and odd to the last part of the array.

def odd_last(arr)
  even_arr = []
  arr.each do |x|
    if x.even?
      even_arr.unshift(x)
    else 
      even_arr << x
    end
  end
  return even_arr
end

odd_last([7,4,3,2,2,8])