# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rubygems'
require 'json'
require 'rest-client'

url1 = "http://mashable.com/stories.json"
url2 = "http://digg.com/api/news/popular.json"

stories_mash = JSON.parse(RestClient.get(url1))
stories_digg = JSON.parse(RestClient.get(url2))



def get_data_digg (stories_digg)
stories = []

#define length of digg array
array_length = stories_digg["data"]["feed"].length.to_i

#iterate out content
	0.upto(array_length - 1) do |i|
		story = {}
		stories_digg_content = stories_digg["data"]["feed"][i]["content"]["tags"][0]["display"]
		stories_digg_title = stories_digg["data"]["feed"][i]["content"]["title"]
		stories_digg_upvotes = stories_digg["data"]["feed"][i]["digg_score"]
		story[:title] = stories_digg_title
		story[:content] = stories_digg_content
		story[:upvotes] = stories_digg_upvotes
		stories.push(story)
	end
return stories
end

def get_data_mash (stories_mash)
stories = []

#define length of digg array
array_length = stories_mash["rising"].length.to_i

#iterate out content
	0.upto(array_length - 1) do |i|
		story = {}
		stories_mash_content = stories_mash["rising"][i]["channel"]
		stories_mash_title = stories_mash["rising"][i]["title"]
		stories_mash_upvotes = stories_mash["rising"][i]["shares"]["total"]
		story[:title] = stories_mash_title
		story[:content] = stories_mash_content
		story[:upvotes] = stories_mash_upvotes
		stories.push(story)
	end
return stories
end

stories_combined_digg = get_data_digg stories_digg
puts
puts "****************************   DIGG    ***************************"
stories_combined_digg.each do |x|
	puts x
end

stories_combined_mash = get_data_mash stories_mash

puts
puts "**************************   MASHABLE   **************************"
stories_combined_mash.each do |x|
	puts x
end





