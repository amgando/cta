# this program has an intermittent bug.
# sometimes the tests pass, sometimes they fail.
# make whatever changes you want to make all the tests pass

# http://www.sorting-algorithms.com/insertion-sort

# for i = 2:n,
#     for (k = i; k > 1 and a[k] < a[k-1]; k--)
#         swap a[k,k-1]
#     → invariant: a[1..i] is sorted
# end

def insertion_sort(array)
  (2...array.length).each do |index|
    memo = index
    while memo > 1 && array[memo] < array[memo-1]
      # swap elements wh
      array[memo], array[memo-1] = array[memo-1], array[memo]
      memo -= 1
    end
  end
  array
end

# -----------------------------

10.times do
  data = (1..100).to_a.sample(10)
  print "%-50s" % [insertion_sort(data)]
  puts insertion_sort(data) == data.sort  # test against internal sort
end

data = (1..9).to_a.reverse
print "%-50s" % [insertion_sort(data)]
puts insertion_sort(data) == data.sort
