# Your Code Here

def map(array)
  newarray = []
  i = 0
  while counter < array.length do
    newarray.push(yield(array[i]))
    i += 1
  end
  newarray
end