describe '/countries/XX.json', type: :api do
  let(:url) { "/api/v1/countries/#{country_data.code.downcase}.json" }
  let(:valid_json) do
    {
      code:             country_data.code,
      name:             country_data.name,
      is_in_eu:         country_data.is_in_eu,
      continent:        country_data.continent,
      vat:              country_data.vat,
      calling_code:     country_data.calling_code,
      default_language: country_data.default_language,
      flag_url:         country_data.flag_url,
      currency:         country_data.currency,
    }.to_json
  end

  let(:country_data) do
    OpenStruct.new(
      code: 'EE',
      name: 'Estonia',
      is_in_eu: true,
      continent: 'Europe',
      vat: 0.2,
      calling_code: '+372',
      default_language: 'et',
      flag_url: 'flagapis.org/ee.png',
      currency: 'eur'
    )
  end

  before do
    create(:country,
      code:             country_data.code,
      name:             country_data.name,
      is_in_eu:         country_data.is_in_eu,
      continent:        country_data.continent,
      vat:              country_data.vat,
      calling_code:     country_data.calling_code,
      default_language: country_data.default_language,
      currency:         country_data.currency)
  end

  it 'returns data' do
    get url
    expect(last_response.body).to eq valid_json
  end

  it 'returns 200 status code' do
    get url
    expect(last_response.status).to eq 200
  end
end
