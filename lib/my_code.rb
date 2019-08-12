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

def reduce(array, starting_value=0)
  if starting_value
    reduced = starting_value
    i = 0
  else
    reduced = array[0]
    i = 1
  end
  while i < array.length
    reduced = yield(reduced, array[i])
    i += 1
  end
  return reduced
end