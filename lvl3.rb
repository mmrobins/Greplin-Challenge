a = [3, 4, 9, 14, 15, 19, 28, 37, 47, 50, 54, 56, 59, 61, 70, 73, 78, 81, 92, 95, 97, 99]

special_subsets = []
3.upto(a.size - 1) do |combo_size|
  puts combo_size
  a.combination(combo_size).each do |subset|
    set = subset.sort
    largest = set.pop
    special_subsets << (set + [largest]) if set.inject(0) {|sum, i| sum += i} == largest
  end
end

puts special_subsets.size
