def decideNoTrump(card_list)
  values = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']
  first_card = card_list.split(" ")[0]
  second_card = card_list.split(" ")[1]

  first_card_value = values.index(first_card.chop)
  second_card_value = values.index(second_card.chop)

  if first_card_value > second_card_value
    puts first_card
  elsif first_card_value < second_card_value
    puts second_card
  else
    puts first_card+ " "+ second_card
  end
end

def decideWithTrump(card_list,trump)
  first_card = card_list.split(" ")[0]
  second_card = card_list.split(" ")[1]
  if first_card.include?(trump) && second_card.include?(trump)
    decideNoTrump(card_list)
  elsif first_card.include?(trump)
    puts first_card
  else
    puts second_card
  end
end

File.open('in.txt').each_line do |line|
  #line.chop!
  trump = line.split(" | ")[1]
  trump = trump.chomp
  card_list = line.split(" | ")[0]
  if card_list.include?(trump)
    decideWithTrump(card_list,trump)
  else
    decideNoTrump(card_list)
  end


end
