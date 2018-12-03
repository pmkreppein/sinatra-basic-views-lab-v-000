require 'spec_helper'

describe 'App' do
  
  describe "GET '/'" do
    before do
      get '/'
    end
    
    it "returns a 200 status code" do
      expect(last_response.status).to eq(200)
    end


    it "renders index.erb" do
      expect(last_response.body).to eq(File.read("views/index.erb"))
    end




  end

end
