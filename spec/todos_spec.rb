require 'rails_helper'
describe "get all todos route", :type => :request do
    let!(:questions) {FactoryBot.create_list(:random_question, 20)}
    before {get '/todos'}
    it 'returns all todos' do
        expect(JSON.parse(response.body).size).to eq(20)
    end
    it 'returns status code 200' do
        expect(response).to have_http_status(:success)
    end
end