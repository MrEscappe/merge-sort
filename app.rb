# frozen_string_literal: true

list = (1..100).to_a.shuffle

def merge_sort(list)
  return list if list.length < 2

  half = list.length / 2
  arr1 = merge_sort(list[0...half])
  arr2 = merge_sort(list[half..list.length])

  arr = []

  arr << (arr1[0] <= arr2[0] ? arr1.shift : arr2.shift) until arr1.empty? || arr2.empty?

  (arr << arr1 << arr2).flatten!
end

p merge_sort(list)
