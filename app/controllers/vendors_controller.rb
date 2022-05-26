class VendorsController < ApplicationController
    def index
        render json: Vendor.all, status: :ok
    end

    def show
        vendor = find_vendor
        if vendor
            render json: vendor, serializer: VendorWithSweetsSerializer, status: :ok
        else
            render json: { error: "Vendor not found" }, status: :not_found
        end
    end

    private

    def find_vendor
        Vendor.find(params[:id])
    end
end
