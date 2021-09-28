class PizzasController < ApplicationController

    def index 
        pizzas = Pizza.all
        render json: pizzas
        # .to_json(except: [:created_at, :updated_at])
    end 
end
