empty = [['ball', 'tatoos'], ['nets', 'rackets']]
eliminate = [['hey', 'ho'], ['hay', 'hoe']]
fill = Array.new

while !empty.empty? || !eliminate.empty?
    fill << empty.pop
    fill << eliminate.pop

end

puts 'empty: '+ empty.to_s
puts 'eliminate:' + eliminate.to_s
puts ''
puts 'fill: ' + fill.to_s