class DogsController < ApplicationController
    def index 
        render json: Dog.all
    end

    def destroy
        dog = Dog.find(params[:id])
        dog.destroy_all
        render json: {success: "Wooohoo"}
    end
end
