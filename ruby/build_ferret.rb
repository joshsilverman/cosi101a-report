require 'ferret'  
include Ferret 
require 'csv'
require 'pry'
require "nokogiri" 
  
# get or create an index on the filesystem  
index = Index::Index.new(:path => './data/ferret.idx')

base = './data/w2vtraining/wiki/AA'
contents = ""
Dir.foreach(base) do |item|
  next if item == '.' or item == '..'
  
  File.open(base + '/' + item) do |f|
    _contents = f.read()
    contents += _contents
  end
end

contents.gsub! '"', ''
contents.gsub! ',', ''
contents.gsub! "\t", ','
contents.gsub! '.', ''
contents = contents.downcase

parsed = Nokogiri::HTML.parse contents
# running!
parsed.css('doc')[8000..8999].each_with_index do |doc, i|
  index << {  
    :title => doc["title"],  
    :content => doc.text
  }
  puts i
end