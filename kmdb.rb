# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
# puts "Movies"
# puts "======"
# puts ""

# # Query the movies data and loop through the results to display the movies output.
# # TODO!

# # Prints a header for the cast output
# puts ""
# puts "Top Cast"
# puts "========"
# puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save

studio = Studio.find_by({ "name" => "Warner Bros." })

new_movie = Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = 2005
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = studio["id"]
new_movie.save

new_movie_2 = Movie.new
new_movie_2["title"] = "The Dark Knight"
new_movie_2["year_released"] = 2008
new_movie_2["rated"] = "PG-13"
new_movie_2["studio_id"] = studio["id"]
new_movie_2.save

new_movie_3 = Movie.new
new_movie_3["title"] = "The Dark Knight Rises"
new_movie_3["year_released"] = 2012
new_movie_3["rated"] = "PG-13"
new_movie_3["studio_id"] = studio["id"]
new_movie_3.save

new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor_2 = Actor.new
new_actor_2["name"] = "Michael Caine"
new_actor_2.save

new_actor_3 = Actor.new
new_actor_3["name"] = "Liam Neeson"
new_actor_3.save

new_actor_4 = Actor.new
new_actor_4["name"] = "Katie Holmes"
new_actor_4.save

new_actor_5 = Actor.new
new_actor_5["name"] = "Gary Oldman"
new_actor_5.save

new_actor_6 = Actor.new
new_actor_6["name"] = "Heath Ledger"
new_actor_6.save

new_actor_7 = Actor.new
new_actor_7["name"] = "Aaron Eckhart"
new_actor_7.save

new_actor_8 = Actor.new
new_actor_8["name"] = "Maggie Gyllenhaal"
new_actor_8.save

new_actor_9 = Actor.new
new_actor_9["name"] = "Tom Hardy"
new_actor_9.save

new_actor_10 = Actor.new
new_actor_10["name"] = "Joseph Gordon-Levitt"
new_actor_10.save

new_actor_11 = Actor.new
new_actor_11["name"] = "Anne Hathaway"
new_actor_11.save

movie_1 = Movie.find_by({ "title" => "Batman Begins" })
movie_2 = Movie.find_by({ "title" => "The Dark Knight" })
movie_3 = Movie.find_by({ "title" => "The Dark Knight Rises" })
actor_1 = Actor.find_by({ "name" => "Christian Bale"})
actor_2 = Actor.find_by({ "name" => "Michael Caine"})
actor_3 = Actor.find_by({ "name" => "Liam Neeson"})
actor_4 = Actor.find_by({ "name" => "Katie Holmes"})
actor_5 = Actor.find_by({ "name" => "Gary Oldman"})
actor_6 = Actor.find_by({ "name" => "Heath Ledger"})
actor_7 = Actor.find_by({ "name" => "Aaron Eckhart"})
actor_8 = Actor.find_by({ "name" => "Maggie Gyllenhaal"})
actor_9 = Actor.find_by({ "name" => "Tom Hardy"})
actor_10 = Actor.find_by({ "name" => "Joseph Gordon-Levitt"})
actor_11 = Actor.find_by({ "name" => "Anne Hathaway"})

# Batman Begins
new_role = Role.new
new_role["movie_id"] = movie_1["id"]
new_role["actor_id"] = actor_1["id"]
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role_2 = Role.new
new_role_2["movie_id"] = movie_1["id"]
new_role_2["actor_id"] = actor_2["id"]
new_role_2["character_name"] = "Alfred"
new_role_2.save

new_role_3 = Role.new
new_role_3["movie_id"] = movie_1["id"]
new_role_3["actor_id"] = actor_3["id"]
new_role_3["character_name"] = "Ra's Al Ghul"
new_role_3.save

new_role_4 = Role.new
new_role_4["movie_id"] = movie_1["id"]
new_role_4["actor_id"] = actor_4["id"]
new_role_4["character_name"] = "Rachel Dawes"
new_role_4.save

new_role_5 = Role.new
new_role_5["movie_id"] = movie_1["id"]
new_role_5["actor_id"] = actor_5["id"]
new_role_5["character_name"] = "Commissioner Gordon"
new_role_5.save

# The Dark Knight
new_role_6 = Role.new
new_role_6["movie_id"] = movie_2["id"]
new_role_6["actor_id"] = actor_1["id"]
new_role_6["character_name"] = "Bruce Wayne"
new_role_6.save

new_role_7 = Role.new
new_role_7["movie_id"] = movie_2["id"]
new_role_7["actor_id"] = actor_6["id"]
new_role_7["character_name"] = "Joker"
new_role_7.save

new_role_8 = Role.new
new_role_8["movie_id"] = movie_2["id"]
new_role_8["actor_id"] = actor_7["id"]
new_role_8["character_name"] = "Harvey Dent"
new_role_8.save

new_role_9 = Role.new
new_role_9["movie_id"] = movie_2["id"]
new_role_9["actor_id"] = actor_2["id"]
new_role_9["character_name"] = "Alfred"
new_role_9.save

new_role_10 = Role.new
new_role_10["movie_id"] = movie_2["id"]
new_role_10["actor_id"] = actor_8["id"]
new_role_10["character_name"] = "Rachel Dawes"
new_role_10.save

#The Dark Knight Rises
new_role_11 = Role.new
new_role_11["movie_id"] = movie_3["id"]
new_role_11["actor_id"] = actor_1["id"]
new_role_11["character_name"] = "Bruce Wayne"
new_role_11.save

new_role_12 = Role.new
new_role_12["movie_id"] = movie_3["id"]
new_role_12["actor_id"] = actor_5["id"]
new_role_12["character_name"] = "Commissioner Gordon"
new_role_12.save

new_role_13 = Role.new
new_role_13["movie_id"] = movie_3["id"]
new_role_13["actor_id"] = actor_9["id"]
new_role_13["character_name"] = "Bane"
new_role_13.save

new_role_14 = Role.new
new_role_14["movie_id"] = movie_3["id"]
new_role_14["actor_id"] = actor_10["id"]
new_role_14["character_name"] = "John Blake"
new_role_14.save

new_role_15 = Role.new
new_role_15["movie_id"] = movie_3["id"]
new_role_15["actor_id"] = actor_11["id"]
new_role_15["character_name"] = "Selina Kyle"
new_role_15.save

puts "Movies"
puts "======"
puts ""

warnerbros = Studio.find_by({ "name" => "Warner Bros." })
movie_warnerbros = Movie.where({ "studio_id" => warnerbros["id"] })

for warnerbros in movie_warnerbros
    title = warnerbros["title"]
    year = warnerbros["year_released"]
    rating = warnerbros["rated"]
    studio = "Warner Bros."
    puts "#{title} #{year} #{rating} #{studio}"
end

puts ""
puts "Top Cast"
puts "========"
puts ""

batman_begins = Movie.find_by({ "title" => "Batman Begins" })
role_batman_begins = Role.where({ "movie_id" => batman_begins["id"]})

for batman_begins in role_batman_begins
    title = "Batman Begins"
    name = batman_begins["character_name"]
    puts "#{title} #{name}"
end

the_dark_knight = Movie.find_by({ "title" => "The Dark Knight" })
role_the_dark_knight = Role.where({ "movie_id" => the_dark_knight["id"]})

for the_dark_knight in role_the_dark_knight
    title = "The Dark Knight"
    name = the_dark_knight["character_name"]
    puts "#{title} #{name}"
end

the_dark_knight_rises = Movie.find_by({ "title" => "The Dark Knight Rises" })
role_the_dark_knight_rises = Role.where({ "movie_id" => the_dark_knight_rises["id"]})

for the_dark_knight_rises in role_the_dark_knight_rises
    title = "The Dark Knight Rises"
    name = the_dark_knight_rises["character_name"]
    puts "#{title} #{name}"
end