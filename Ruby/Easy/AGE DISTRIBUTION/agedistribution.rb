=begin
If they're from 0 to 2 the child should be with parents print : 'Still in Mama's arms'
If they're 3 or 4 and should be in preschool print : 'Preschool Maniac'
If they're from 5 to 11 and should be in elementary school print : 'Elementary school'
From 12 to 14: 'Middle school'
From 15 to 18: 'High school'
From 19 to 22: 'College'
From 23 to 65: 'Working for the man'
From 66 to 100: 'The Golden Years'
If the age of the person less than 0 or more than 100 - it might be an alien - print: "This program is for humans"
=end
File.open('in.txt').each_line do |line|
  age = line.chomp.to_i
  if age <= -1 || age >= 100
    puts "This program is for humans"
  elsif age <= 2
    puts "Still in Mama's arms"
  elsif age <= 4
    puts 'Preschool Maniac'
  elsif age <= 11
    puts 'Elementary school'
  elsif age <= 14
    puts 'Middle school'
  elsif age <= 18
    puts 'High school'
  elsif age <= 22
    puts 'College'
  elsif age <= 65
    puts 'Working for the man'
  elsif age <= 100
    puts 'The Golden Years'
  end
end
