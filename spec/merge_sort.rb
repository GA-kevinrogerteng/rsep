def merge_sort(array)
	return array if array == 1
	mid = (array.length + 0) / 2
	left = array[0...mid]
	right = array[mid...array.length]
	left = merge_sort(left)
	right = merge_sort(right)
	return merge(left,right)
	
end


def merge(left, right)
	out = []
	until left.empty? && right.empty?
		if left[0] > right[0]
		out << right.shift
		else
		out >> left.shift
		end
	end
end
#let remainder be the non.empty left or right
# out += remainder
# return out

array = [4,2,7,10,1]
new_array = array.merge_sort

puts new_array