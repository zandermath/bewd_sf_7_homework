# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'
require 'pry'
require 'pry-byebug'

reddit_json = JSON.load(RestClient.get('http://www.reddit.com/.json'))
mashable_json = JSON.load(RestClient.get('http://mashable.com/stories.json'))
digg_json = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
aggregator = {}

binding.pry
# call: reddit_json["data"]["children"][0] - will get the first story in "children"


def get_reddit_story(reddit_json, story_number)
	title = reddit_json["data"]["children"][story_number]["data"]["title"]
	category = reddit_json["data"]["children"][story_number]["data"]["subreddit"]
	source = "Reddit"
	determine_upvotes(title,category,source)
end

def get_mashable_story(mashable_json, story_number)
	title = mashable_json["new"][story_number]["title"]
	category = mashable_json["new"][story_number]["channel"]
	source = "Mashable"
	determine_upvotes(title,category,source)
end

def get_digg_story(digg_json, story_number)
	title = digg_json["data"]["feed"][story_number]["content"]["title_alt"]
	category = digg_json["data"]["feed"][story_number]["content"]["tags"][0]["name"]
	source = "Digg"
	determine_upvotes(title,category,source)
end

def determine_upvotes(title,category,source)
	upvotes = 1
	if category.downcase == "cars"
		upvotes *= 100
	elsif category.downcase == "food"
		upvotes *= 5
	elsif category.downcase == "cats"
		upvotes *= 7
	else
		upvotes *= 1
	end
	create_story(title,category,upvotes,source)
end

def create_story(title,category,upvotes,source)
	{title: title, category: category, upvotes: upvotes, source: source}
end

def aggregate_stories(reddit_json,mashable_json,digg_json)
	stories = []				#create a container for all stories
	i = 0
	while i < reddit_json["data"]["children"].length
		story = get_reddit_story(reddit_json, i)			#get one story and create a hash
		stories.push(story)
		i += 1
	end
	j = 0
	while j < mashable_json["new"].length
		story = get_mashable_story(mashable_json, j)
		stories.push(story)
		j += 1
	end
	k = 0
	while k < digg_json["data"]["feed"].length
		story = get_digg_story(digg_json, k)
		stories.push(story) 
		k += 1
	end 		#pass has into stories array
	print_news_feed(stories)	#print all stories
			


	#call get_story until someone says 'no' or otherwise signals "no more stories"
	#do you have another story? yes or no?
	#pushing every story into the stories array
	#if we're done, print all the stories, using another method
end

def print_news_feed(stories)
	stories.each do |story|
		puts "\nSource: #{story[:source]}\nTitle: #{story[:title]}\nCategory: #{story[:category]}\nUpvotes: #{story[:upvotes]}\n \n"
		# puts story[:title]
		# story
		# #each story is a hash
	end
end

aggregate_stories(reddit_json,mashable_json,digg_json)