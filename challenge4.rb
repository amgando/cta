# this program has an intermittent bug.
# sometimes the tests pass, sometimes they fail.
# make whatever changes you want to make all the tests pass

# http://www.sorting-algorithms.com/insertion-sort

# for i = 2:n,
#     for (k = i; k > 1 and a[k] < a[k-1]; k--)
#         swap a[k,k-1]
#     → invariant: a[1..i] is sorted
# end

def insertion_sort(a)
  # indexes from third to last ... weird
  (2...a.length).
  # for each index
  each do |i|
    # dont get it
    k = i
    # ... don't understand
    while k > 0 && a[k] < a[k-1]
      # swap
      a[k], a[k-1] = a[k-1], a[k]
      # mutates k
      k -= 1
    end
  end
  a
end

# -----------------------------

p insertion_sort([2,1])

# 10.times do
#   data = (1..100).to_a.sample(10)
#   print "%-50s" % [insertion_sort(data)]
#   puts insertion_sort(data) == data.sort  # test against internal sort
# end
