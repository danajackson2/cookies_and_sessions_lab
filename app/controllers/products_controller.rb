class ProductsController < ApplicationController
    def index
    end

    def add
        @item = params["product"]["name"]
        cart = session[:cart] || [] 
        cart << @item
        session[:cart] = cart
        redirect_to root_path
    end

end