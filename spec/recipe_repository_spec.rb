require 'recipe_repository'

RSpec.describe RecipeRepository do
    describe '#all' do
        it 'creates array of recipe objects' do
            repo = RecipeRepository.new

            recipes = repo.all

            expect(recipes.length).to eq 2

            expect(recipes[0].id).to eq '1' 
            expect(recipes[0].name).to eq 'Baked potato test'
            expect(recipes[0].average_cooking_time).to eq '60'
            expect(recipes[0].rating).to eq '4' 

            expect(recipes[1].id).to eq '2'
            expect(recipes[1].name).to eq 'Pasta test'
            expect(recipes[1].average_cooking_time).to eq '25'
            expect(recipes[1].rating).to eq '3'
        end
    end

    describe '#find' do
        it 'returns the recipe object with id "1"' do
            repo = RecipeRepository.new

            recipe = repo.find(1)

            expect(recipe.id).to eq '1'
            expect(recipe.name).to eq 'Baked potato test'
            expect(recipe.average_cooking_time).to eq '60'
            expect(recipe.rating).to eq '4'
        end
        it 'returns the recipe object with id "2"' do
            repo = RecipeRepository.new

            recipe = repo.find(2)

            expect(recipe.id).to eq '2'
            expect(recipe.name).to eq 'Pasta test'
            expect(recipe.average_cooking_time).to eq '25'
            expect(recipe.rating).to eq '3'
        end
    end

    describe '#print_recipe_list' do
        it 'returns an array of strings of recipe details' do
            repo = RecipeRepository.new

            expect(repo.print_recipe_list).to eq ["1 - Baked potato test: Cooking time of 60 minutes. Nick-rating of 4/5!", "2 - Pasta test: Cooking time of 25 minutes. Nick-rating of 3/5!"]
        end
    end
end