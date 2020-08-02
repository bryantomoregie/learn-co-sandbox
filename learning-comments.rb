grand_total = 0

row_index = 0 # First level. Inside whole thing.

while row_index < vm.length do # vm.length is how many row indexes are in vm. row_index will loop, and will stop when vm gets to 2 in my example.
  
  column_index = 0 # Second level. Inside row_index. 
  
  while column_index < vm[row_index].length do #vm[row_index].length is how many column indexes are in the row index. When column index goes to 2, loop will stop. 
    
    inner_len = vm[row_index][column_index].length #This tells me how many inner indexes their are. My example is 2. 
    
    inner_index = 0 
    
    while inner_index < inner_len do #When inner index is equal to 2, it will stop looping. 
      
      
      # Explanation!
      # vm[row][column][inner_index]
      # spinner is full of Hashes with keys :price and :name
      
      grand_total += vm[row_index][column_index][inner_index][:price]
      inner_index += 1 # increments by one to get both the inner indexes. Adding to the grand total in the second inner index iteration like the first.  
    end
   
    column_index += 1 # once both the inner indexes have been captured in the previous loop, that loop will end and this loop will capture the second calumn index element. Going thru to the grand total, adding to that number. 
  end
  
  row_index += 1 # when both column indexes have been captured by the previous loop, the row index loop will capture the second and last column index in this vending machine. Once that is done, we...
end # end all loops. Having gone thru with each row_index, and its nested column indexes and inner indexes, adding to the gradn total each time. 
 
p grand_total #=> 1192 We return and print the grand_total to end this