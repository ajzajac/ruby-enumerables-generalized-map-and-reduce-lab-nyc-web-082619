# Your Code Here

def map(array)
  newarray = []
  i = 0
  while i < array.length do
    newarray.push(yield(array[i]))
    i += 1
  end
  newarray
end

def reduce(array, starting_point=0)
  if starting_point == 0 
    starting_point = array[0]
    i = 1
    while i < array.length do
      starting_point = yield(starting_point, array[i])
      i += 1
    end
    return starting_point
  else
    i = 0
    while i < array.length do
      starting_point = yield(starting_point, array[i])
      i += 1
    end
    return starting_point
  end
end