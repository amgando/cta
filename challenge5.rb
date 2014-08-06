# this program has an intermittent bug.
# sometimes the tests pass, sometimes they fail.
# make whatever changes you want to make all the tests pass

# http://www.sorting-algorithms.com/selection-sort

# for i = 1:n,
#     k = i
#     for j = i+1:n, if a[j] < a[k], k = j
#     → invariant: a[k] smallest of a[i..n]
#     swap a[i,k]
#     → invariant: a[1..i] in final position
# end

def selection_sort(a)
  (0...a.length-1).each do |i|
    k = i
    (i+0...a.length).each do |j|
      k = j if a[j] < a[k]
    end
    a[i], a[k] = a[k], a[i]
  end
  a
end

# -----------------------------

10.times do
  data = (1..100).to_a.sample(10)
  print "%-50s" % [selection_sort(data)]
  puts selection_sort(data) == data.sort  # test against internal sort
end
