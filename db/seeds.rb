# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


# INGREDIENTS

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
url_json = open(url).read
data = JSON.parse(url_json)

data['drinks'].each do |ing|
  Ingredient.create(name: ing["strIngredient1"])
end


# COCKTAIL

mojito = Cocktail.create(name: 'Mojito')
cuba_libre = Cocktail.create(name: 'Cuba Libre')
bloody_mary = Cocktail.create(name: 'Bloody Mary')
pina_colada = Cocktail.create(name: 'Piña colada')
moscow_mule = Cocktail.create(name: 'Moscow Mule')
margarita = Cocktail.create(name: 'Margarita')
caipirinha = Cocktail.create(name: 'Caipirinha')


# DOSES
