require 'csv'
require 'pry'
require 'benchmark'
require 'ferret'  
include Ferret

# ['data/training_set', 'data/validation_set'].each do |filename|
sets = {'data/training_set' => [3,4,5,6] }#, 
        # 'data/validation_set' => [1,2,3,4,5] }

# sets = {'data/validation_set' => [1,2,3,4,5] }
index = Index::Index.new(:path => './data/ferret.idx')
sets.each do |filename, indices|
  t = Benchmark.measure do
    CSV.open("#{filename}_ferret.csv", "wb") do |csv|    

      i = 0
      CSV.foreach("#{filename}.csv") do |row|
        puts i += 1
        result_row = [row[0]]
        question = row[1]

        docs = []
        indices.each do |i|
          q = "#{question} #{row[i]}"
          r = index.search(q)
          begin
            result_row << r.hits[0].score + r.hits[1].score
            docs << r.hits[0].doc
          rescue
            result_row << r.max_score
            docs << ''
          end
        end

        result_row += docs
        csv << result_row
      end
    end
  end
  puts "completed in #{t.real} seconds"
end