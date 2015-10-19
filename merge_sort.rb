def merge (first_array, second_array)
  index_first_array = 0
  index_second_array = 0
  @merging_array = []
  while index_first_array < first_array.length and index_second_array < second_array.length do
    if first_array[index_first_array] <= second_array[index_second_array] then
      @merging_array << first_array[index_first_array]
      index_first_array = index_first_array+1
    else
      @merging_array << second_array[index_second_array]
      index_second_array = index_second_array + 1
    end
  end

  if(index_first_array < first_array.length) then
    for i in(index_first_array..first_array.length - 1) do
      @merging_array << first_array[i]
    end
  else
    for i in(index_second_array..second_array.length - 1) do
      @merging_array << second_array[i]
    end
  end

  return @merging_array
end


def msort(list)
  return list if list.length == 1
  half_of_list = list.length / 2
  first_part_list = list[0..half_of_list - 1]
  second_part_list = list[half_of_list..list.length - 1]
  first_list_result = msort(first_part_list)
  second_list_result = msort(second_part_list)
  new_list_result = merge(first_list_result,second_list_result)
  return new_list_result
end



merge([8,4,9], [4,2,1])
p @merging_array
p msort(@merging_array)
