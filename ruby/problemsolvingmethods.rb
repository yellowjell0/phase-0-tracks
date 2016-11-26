#pairing-session (Katy Lee, Wes Callahan)

#Release 0

def fib(n)

array = [0,1]

i = 2
while i < n
array[i] = array[i-1] + array[i-2]
array << array[i] 
i += 1 
end
array.pop
p array
end


fib(6)

#Release 1

def search_array(arr, n)
  array = []
  arr.each {|n| array << n}
  i = 0
  while i < arr.length 
  if n == arr[i]
  p i 
end
i += 1
end
end

arr = [42, 89, 23, 1]
search_array(arr, 89)

#Release 2 
def bubble_sort(array)
  n = array.length 
  loop do
    swapped = FALSE
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true 
      end
    end
    break if not swapped 
  end
  array
end
a = [1,4,1,3,4,1,3,3]
p bubble_sort(a)