class SweetsController < ApplicationController
    def index
        render json: Sweet.all, status: :ok
    end

    def show
        sweet = find_sweet
        if sweet
            render json: sweet, status: :ok
        else
            render json: { error: "Sweet not found"}, status: :not_found
        end
    end

    private

    def find_sweet
        Sweet.find(params[:id])
    end
end
