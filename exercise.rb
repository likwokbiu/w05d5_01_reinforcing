seating_plan = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

seating_plan.each_with_index do |row,i|
  row.each_with_index do |seat,j|
    if seat == nil
      print "Row #{i+1} seat #{j+1} is free. Do you want to sit there? (y/n) "
      reply = gets.chomp.downcase
      if reply == "y"
        print "What is your name? "
        name = gets.chomp.capitalize
        seating_plan[i][j] = name
      end
    end
  end
end

print seating_plan
