def bubble_sort(array)

    x = 0
    y = 1
    pass = array.length-1
    sorted = array
  
    while pass != 0
      if y > pass
        x = 0
        y = 1
        pass -=1
      elsif sorted[x] > sorted[y]
        sorted[x], sorted[y] = sorted[y], sorted[x]
        x += 1
        y += 1
      else
        x += 1
        y += 1
      end
    end
    sorted
  end
  p bubble_sort([4,3,78,2,0,2])