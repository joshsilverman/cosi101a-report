require 'csv'
require 'pry'

ans_r = ["a", "b", "c", "d"]

prediction_set = {}
CSV.foreach("data/training_set_ferret.csv") do |row|
  id = row[0].to_i
  ans = row[1..5].map(&:to_f)
  prediction = ans.index(ans.max)
  prediction_set[id] = ans_r[prediction]
end

truth_set = {}
CSV.foreach("data/training_set.csv") do |row|
  id = row[0].to_i
  truth_set[id] = row[2] if id > 0
end

correct_h = {}
correct_count = 0.0
total = 0.0
truth_set.each do |id, correct_letter|
  puts prediction_set[id].downcase
  begin
    correct_bool = correct_letter.downcase == prediction_set[id].downcase
  rescue
    binding.pry
  end
  
  correct_h[id] = correct_bool

  total += 1
  correct_count +=1 if correct_bool
end

puts correct_h
accuracy = correct_count / total
puts "correct percentage: #{accuracy}"

