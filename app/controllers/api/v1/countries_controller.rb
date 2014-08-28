class Api::V1::CountriesController < ApplicationController
  def show
    country = Country.find_by_code(params[:code].upcase)
    render json: CountrySerializer.new(country)
  end
end
