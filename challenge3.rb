# http://www.sorting-algorithms.com/insertion-sort
# for i = 2:n,
#     for (k = i; k > 1 and a[k] < a[k-1]; k--)
#         swap a[k,k-1]
#     → invariant: a[1..i] is sorted
# end

def insertion_sort(a)

  # for i = 2:n,
  (2..a.length).each do |i|
    k = i
    # for (k = i; k > 1 and a[k] < a[k-1]; k--)
    while k > 1 && a[k] < a[k-1]
      # swap a[k,k-1]
      a[k], a[k-1] = a[k-1], a[k]
      k -= 1
    end
  end

  return a
end

data = (1..100).to_a.sample(50)
p insertion_sort(data)
