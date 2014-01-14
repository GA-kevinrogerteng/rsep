list = [4,7,3,9,2]

    for i in 1..(list.length - 1)
        value = list[i]
        j = i - 1
        while j >= 0 and list[j] > value
            list[j + 1] = list[j] 
            j -= 1
        end
        list[j + 1] = value
    end

puts list
# swapped = true
# temp = ""
# i = 1
# until swapped == false
# 	swapped = false
#         for i in 1..(source.size)
#           	if source[i] < source[i-1]
#               	puts source[i].to_s + " compare < " + source[i-1].to_s
#               	temp = [i]
#               	source[i] = source[i-1]
#               	source[i-1] = temp
              	
#               	swapped = true
#           	end
#       	end
# end

#           puts source