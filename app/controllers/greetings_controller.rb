class GreetingsController < ApplicationController
    def get_random_greeting
        render json: { greeting: Message.order('RANDOM()').first.message }
    end
end
