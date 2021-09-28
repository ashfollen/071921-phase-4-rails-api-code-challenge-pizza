class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, status: :created
        # .to_json(except: [:created_at, :updated_at])
    end

    private 

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end 

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

end
