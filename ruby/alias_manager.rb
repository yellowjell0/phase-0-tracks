
stored_names = []
puts "Enter your name"
name = gets.chomp

stored_names = []
stored_names << name
name_pieces = name.downcase.split('')
loop do

name_pieces.each do |x|
  if x == 'a'
  x.replace('e')
  elsif x == 'e'
    x.replace('i')
    elsif x == 'i'
    x.replace('o')
    elsif x == 'o'
    x.replace('u')
    elsif x == 'u'
    x.replace('a')
  end
end
name_pieces.each do |y|
  if y == 'b'
    y.replace('c')
      elsif y == 'c'
    y.replace('d')
    elsif y == 'd'
    y.replace('f')
      elsif y == 'f'
    y.replace('g')
      elsif y == 'g'
    y.replace('h')
      elsif y =='h'
    y.replace('j')
      elsif y =='j'
    y.replace('k')
      elsif y =='k'
    y.replace('l')
      elsif y =='l'
    y.replace('m')
      elsif y =='m'
    y.replace('n')
      elsif y == 'n'
    y.replace('p')
      elsif y == 'p'
    y.replace('q')
      elsif y == 'q'
    y.replace('r')
      elsif y == 'r'
    y.replace('s')
      elsif y == 's'
    y.replace('t')
      elsif y == 't'
    y.replace('v')
      elsif y == 'v'
    y.replace('w')
      elsif y == 'w'
    y.replace('x')
    elsif y == 'x'
    y.replace('y')
      elsif y == 'y'
    y.replace('z')
      elsif y == 'z'
    y.replace 'b'
    end
    name_pieces.join('').capitalize
end
p name_pieces

count = 1
  puts "Isn't this fun? Try another name. Enter quit when done."
  input = gets.chomp
   stored_names << input
  count += 1
  if input == 'quit'
    puts stored_names
    stored_names.each do |x|
      puts "#{x}, they'll never know it was you!"
    end
  end
end
  