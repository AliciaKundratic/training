require "mechanize"
require "pry"

agent = Mechanize.new
agent.get("https://www.google.com/") do |page|
 result = page.form_with(name: "f") do |search|
   search.q = 'kitten'
 end.submit
 result.links[30..35].each do |link| 
   puts link.text
 end
end
