class VendorSweetsController < ApplicationController
    def create
        create = VendorSweet.create(vendorSweet_params)
        if create.valid?
            render json: create, status: :created
        else
            render json: { errors: ["validation errors"] }, status: 422
        end
    end

    def destroy
        vS = find_vendorSweet
        if vS
            vS.destroy
            render json: {}, status: :ok
        else
            render json: { "error": "VendorSweet not found" }, status: :not_found
        end

    end

    private

    def find_vendorSweet
        VendorSweet.find(params[:id])
    end
    
    def vendorSweet_params
        params.permit(:price, :vendor_id, :sweet_id)
    end
end
