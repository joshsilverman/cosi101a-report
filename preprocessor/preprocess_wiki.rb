require 'csv'
require 'pry'
require "nokogiri"

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
contents = parsed.text

open('./data/w2vtraining/wiki.txt', 'wb') do |f|
  f.write contents
end