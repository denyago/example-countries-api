class CountrySerializer
  def initialize(country)
    @country = country
  end

  def as_json(opts={})
    {
      code:             @country.code,
      name:             @country.name,
      is_in_eu:         @country.is_in_eu,
      continent:        @country.continent,
      vat:              @country.vat,
      calling_code:     @country.calling_code,
      default_language: @country.default_language,
      flag_url:         flag_url,
      currency:         @country.currency,
    }
  end

  private

  def flag_url
    "flagapis.org/#{@country.code.downcase}.png"
  end

end
