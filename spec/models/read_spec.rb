require 'rails_helper'

RSpec.describe Read, type: :model do
  describe "#top_ten" do
    it "returns only top ten most read and most popular first" do
      read1 = Read.create(url: "https://www.google.com")
      read2 = Read.create(url: "https://www.example.com")
      read3 = Read.create(url: "https://www.google1.com")
      read4 = Read.create(url: "https://www.example1.com")
      read5 = Read.create(url: "https://www.google2.com")
      read6 = Read.create(url: "https://www.example2.com")
      read6 = Read.create(url: "https://www.google3.com")
      read8 = Read.create(url: "https://www.example3.com")
      read9 = Read.create(url: "https://www.google4.com")
      read10 = Read.create(url: "https://www.example4.com")
      read11 = Read.create(url: "https://www.google.com")

      expect(Read.top_ten.first[0]).to eq(read11.url)
      expect(Read.top_ten.count).to eq(10)
    end
  end
end
