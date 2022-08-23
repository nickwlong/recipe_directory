# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/recipe_repository.rb'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipe_directory')

nick_repo = RecipeRepository.new
puts nick_repo.print_recipe_list