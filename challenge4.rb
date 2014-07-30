# this program has an intermittent bug.
# sometimes the tests pass, sometimes they fail.
# make whatever changes you want to make all the tests pass

# http://www.sorting-algorithms.com/insertion-sort

# for i = 2:n,
#     for (k = i; k > 1 and a[k] < a[k-1]; k--)
#         swap a[k,k-1]
#     → invariant: a[1..i] is sorted
# end

def insertion_sort(data)
  data_length = data.length

  (1...data_length).each do |index|
    temporary_index = index

    while temporary_index > 1 && data[temporary_index] < data[temporary_index - 1]
      data[temporary_index]     = data[temporary_index - 1]
      data[temporary_index - 1] = data[temporary_index]

      temporary_index -= 1
    end
  end

  data
end

# -----------------------------

10.times do
  data = (1..100).to_a.sample(10)
  print "%-50s" % [insertion_sort(data)]
  puts insertion_sort(data) == data.sort  # test against internal sort
end
