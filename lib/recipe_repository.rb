require_relative './recipe.rb'

class RecipeRepository

    def all
        sql = 'SELECT id, name, average_cooking_time, rating FROM recipes;'
        result = DatabaseConnection.exec_params(sql, [])

        recipes = []

        result.each do |record|
            recipes << create_recipe_object(record)
        end

        return recipes
    end

    def find(id)
        sql = 'SELECT id, name, average_cooking_time, rating FROM recipes WHERE id = $1;'
        params = [id]

        result = DatabaseConnection.exec_params(sql, params)

        return create_recipe_object(result[0])
    end

    def create_recipe_object(record)
        recipe = Recipe.new
        recipe.id = record['id']
        recipe.name = record['name']
        recipe.average_cooking_time = record['average_cooking_time']
        recipe.rating = record['rating']
        return recipe
    end

    def print_recipe_list
        #return each recipe as a string of it's details
        list_array = all.map do |recipe|
            "#{recipe.id} - #{recipe.name}: Cooking time of #{recipe.average_cooking_time} minutes. Nick-rating of #{recipe.rating}/5!"
        end
        return list_array
    end
end