require 'rails_helper'

describe 'reads endpoints' do
  context 'POST /reads' do
    it "creates a read and renders it in json" do

      post '/api/v1/reads', params: {link: "https://www.example.com"}

      expect(Read.first.url).to eq("https://www.example.com")
    end
  end

  context " GET /reads" do
    it "renders the index of hot reads" do
      read1 = Read.create(url: "https://www.google.com")
      read2 = Read.create(url: "https://www.example.com")

      get '/api/v1/reads'

      reads = JSON.parse(response.body, symbolize_names: true)

      expect(reads.length).to eq(2)
    end
  end

end
