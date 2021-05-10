require "open-uri"

class FlatsController < ApplicationController
    before_action :get_data

    def index
    end

    def show
        # get ID
        @id = params[:id]
        # call the api
        @flat = @flats.find { |flat| flat["id"] == @id.to_i }
    end

    private

    def get_data
        # call the api and get the data
        # save them in a variable
        @url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
        @flats = JSON.parse(open(@url).read)
    end

end
